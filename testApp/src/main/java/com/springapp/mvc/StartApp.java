package com.springapp.mvc;

/**
 * Created by remirobert on 24/12/14.
 */
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import com.springapp.mvc.Model.User;
import com.springapp.mvc.Model.Account;
import com.springapp.mvc.Service.UserService;
import com.springapp.mvc.Service.AccountService;

@SuppressWarnings("serial")
public class StartApp extends HttpServlet
{

    private void initAdiministratorAccount() {
        UserService userService = new UserService();

        if (userService.isUserExist("root") != null) {
            return;
        }

        User newAdmin = new User("admin", "root", "root", 2);
        userService.addUser(newAdmin);

        String idCurrentClient = null;
        if ((idCurrentClient = userService.getIdUser(newAdmin)) == null)
            return;

        Account newAccount = new Account(idCurrentClient, "root");
        AccountService accountService = new AccountService();
        accountService.createAccount(newAccount);
    }

    public void init() throws ServletException {
        this.initAdiministratorAccount();
    }
}