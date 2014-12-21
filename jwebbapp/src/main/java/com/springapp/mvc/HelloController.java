package com.springapp.mvc;

import com.springapp.mvc.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.springapp.mvc.dao.PersonDAO;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("mvc-dispatcher-servlet.xml");

		PersonDAO personDAO = ctx.getBean("personDAO", PersonDAO.class);

		Person p = new Person(null, "PankajKr", "Bangalore, India");

		//create
		personDAO.create(p);
		System.out.println("Generated ID="+p.getId());

		//read
		Person p1 = personDAO.readById(p.getId());
		System.out.println("Retrieved Person="+p1);

		//update
		p1.setName("David");p1.setAddress("SFO, USA");
		personDAO.update(p1);
		Person temp = personDAO.readById(p1.getId());
		System.out.println("Retrieved Person after update="+temp);

		//delete
		int count = personDAO.deleteById(p1.getId());
		System.out.println("Number of records deleted="+count);

		ctx.close();


		model.addAttribute("message", "Hello world! salut");


		return "hello";
	}
}