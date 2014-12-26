package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.User;
import com.springapp.mvc.Service.AccountService;
import com.springapp.mvc.Service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by julien on 26/12/14.
 */

@Controller
public class ItemsController {
    @RequestMapping(value="/items", method = RequestMethod.GET)
    public String listitems(ModelMap model) {
        User currentUser = null;
        currentUser.getFirstName();

        return "items";
    }
}
