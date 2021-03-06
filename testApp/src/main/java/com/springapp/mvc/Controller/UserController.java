package com.springapp.mvc.Controller;

/**
 * Created by remirobert on 24/12/14.
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springapp.mvc.Service.UserService;
import com.springapp.mvc.Model.User;
import com.springapp.mvc.Model.Account;
import com.springapp.mvc.Service.AccountService;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @RequestMapping(value="/account/signin", method = RequestMethod.POST)
    public String signInUser(@RequestParam("email") String email,
                             @RequestParam("password") String password,
                             HttpSession session,
                             ModelMap model) {

        UserService userService = new UserService();
        AccountService accountService = new AccountService();
        User currentUser = null;

        if ((currentUser = userService.isUserExist(email)) == null) {
            System.out.println("User doenst't exist");
            return "Connection/signin";
        }

        if (!accountService.checkPassword(userService.getIdUser(currentUser), password)) {
            System.out.println("password wrong");
            return "Connection/signin";
        }



        //return "account";
        session.setAttribute("user", currentUser);

        User userSession = (User)session.getAttribute("user");

        System.out.println("OKKAY debug1");
        model.addAttribute("firstName", userSession.getFirstName());

        System.out.println("OKKAY debug2" + userSession.getFirstName());

        if (currentUser.getTypeAccount() == 1)
            return "redirect:/items";

        return "redirect:/admin/index";
    }

    @RequestMapping(value="/account/signup", method = RequestMethod.POST)
    public String signUpUser(@RequestParam("firstName") String firstName,
                             @RequestParam("lastName") String lastName,
                             @RequestParam("email") String email,
                             @RequestParam("password") String password,
                             ModelMap model) {

        User newUser = new User(firstName, lastName, email, 1);
        UserService userService = new UserService();

        if (userService.isUserExist(email) != null) {
            System.out.println("User already exist");
            return "Connection/signup";
        }
        userService.addUser(newUser);

        String idCurrentClient = null;
        if ((idCurrentClient = userService.getIdUser(newUser)) == null) {
            return "Connection/signup";
        }

        Account newAccount = new Account(idCurrentClient, password);
        AccountService accountService = new AccountService();
        accountService.createAccount(newAccount);

        return "index";
    }
}
