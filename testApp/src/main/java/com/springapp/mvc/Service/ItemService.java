package com.springapp.mvc.Service;

/**
 * Created by remirobert on 26/12/14.
 */

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.springapp.mvc.Database;
import com.springapp.mvc.Model.Item;
import org.bson.types.ObjectId;

public class ItemService {

    private String collection = "Item";

    public void addItem(Item newItem) {
        DB db = Database.getInstance().db;
        DBCollection table = db.getCollection(this.collection);
        table.insert(newItem);
    }

    public void removeItem(Item item) {

    }

}
