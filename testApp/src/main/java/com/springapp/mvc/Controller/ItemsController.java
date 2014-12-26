package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.Item;
import com.springapp.mvc.Model.User;
import com.springapp.mvc.Service.AccountService;
import com.springapp.mvc.Service.ItemService;
import com.springapp.mvc.Service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by julien on 26/12/14.
 */

@Controller
public class ItemsController {
    @RequestMapping(value="/items", method = RequestMethod.GET)
    public String listitems(ModelMap model , HttpSession session) {

        User userSession = (User)session.getAttribute("user");
       // Item itemSession = (Item)session.getAttribute("item");

        ItemService items = new ItemService();

        model.addAttribute("firstName", userSession.getFirstName());
      //  model.addAttribute("items", itemSession.getItems());

        List<String> list = new ArrayList<String>();
        list.add("List A");
        list.add("List B");
        list.add("List C");
        list.add("List D");
        list.add("List 1");
        list.add("List 2");
        list.add("List 3");


        model.addAttribute("items", items.getAllItems());

        model.addAttribute("item2", list);

        return "items";
    }
}
