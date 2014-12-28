package com.springapp.mvc.Controller;

/**
 * Created by remirobert on 26/12/14.
 */

import com.springapp.mvc.Model.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.springapp.mvc.Service.UserService;
import com.springapp.mvc.Model.User;
import com.springapp.mvc.Service.ItemService;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AdminController {

    @RequestMapping(value = "/admin/index", method = RequestMethod.GET)
    public String adminIndex(ModelMap model) {
        UserService userService = new UserService();
        ItemService itemService = new ItemService();

        List<User> users = userService.getUserList();
        List<Item> items = itemService.getAllItems();

        model.addAttribute("users", users);
        model.addAttribute("items", items);
        return "Admin/admin";
    }

    @RequestMapping(value = "/admin/itemCreation", method = RequestMethod.GET)
    public String itemCreation() {
        return "Admin/itemCreation";
    }

    @RequestMapping(value = "/admin/addItem", method = RequestMethod.POST)
    public String addNewItem(@RequestParam("nameItem") String nameItem,
                             @RequestParam("price") String price,
                             @RequestParam("description") String description,
                             @RequestParam("quantity") String quantity,
                             ModelMap model) {
        Item newItem = new Item(nameItem, price, Integer.parseInt(quantity));
        newItem.setDescription(description);
        ItemService itemService = new ItemService();
        itemService.addItem(newItem);

        return adminIndex(model);
    }

}
