package com.springapp.mvc.Service;

/**
 * Created by remirobert on 26/12/14.
 */

import com.mongodb.*;
import com.springapp.mvc.Database;
import com.springapp.mvc.Model.Item;
import com.springapp.mvc.Model.User;

import java.util.LinkedList;
import java.util.List;

public class ItemService {

    private String collection = "Item";

    public void addItem(Item newItem) {
        DB db = Database.getInstance().db;
        DBCollection table = db.getCollection(this.collection);
        table.insert(newItem);
    }

    public void removeItem(Item item) {

    }

    public List<Item> getAllItems() {
        List<Item> items = new LinkedList<Item>();

        DBCollection table = Database.getInstance().db.getCollection(this.collection);

        DBCursor cursor = table.find();

        try {
            while(cursor.hasNext()) {
                DBObject userDetails = cursor.next();
                Item currentItem = new Item((String)userDetails.get("nameItem"),
                        (String)userDetails.get("price"),
                        (Integer)userDetails.get("quantity"));
                items.add(currentItem);
            }
        } finally {
            cursor.close();
        }

        return items;
    }
}
