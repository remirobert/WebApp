package com.springapp.mvc.Controller;

/**
 * Created by remirobert on 26/12/14.
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

    @RequestMapping(value="/admin/index", method = RequestMethod.GET)
    public String adminIndex(ModelMap model) {
        return "Admin/admin";
    }

}
