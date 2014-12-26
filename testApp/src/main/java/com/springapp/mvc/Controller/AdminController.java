package com.springapp.mvc.Controller;

/**
 * Created by remirobert on 26/12/14.
 */

import com.springapp.mvc.Model.User;
import com.springapp.mvc.Service.AccountService;
import com.springapp.mvc.Service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @RequestMapping(value="/admin/index", method = RequestMethod.GET)
    public String adminIndex(ModelMap model) {
        return "admin";
    }

}
