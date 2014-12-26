package com.springapp.mvc.Service;

/**
 * Created by remirobert on 26/12/14.
 */

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.springapp.mvc.Database;
import com.springapp.mvc.Model.Item;

import java.util.LinkedList;
import java.util.List;

public class ItemService {

    private String collection = "Item";
    private List<Item> allItems;

    public void addItem(Item newItem) {
        DB db = Database.getInstance().db;
        DBCollection table = db.getCollection(this.collection);
        table.insert(newItem);
    }

    public void removeItem(Item item) {

    }

    public List<Item> getAllItems() {

       // creation d'items Fakes
        List<Item> items = new LinkedList<Item>();
        items.add(new Item("ballons", "2,2", 100));
        items.add(new Item("chapeaux", "30", 0));
        items.add(new Item("pantalons", "50", 100));
        items.add(new Item("chemises", "1", 100));
        items.add(new Item("chaussures", "0", 100));
        items.add(new Item("iphone", "500", 10));

        return items;
    }
}
