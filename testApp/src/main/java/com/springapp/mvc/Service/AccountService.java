package com.springapp.mvc.Service;

/**
 * Created by remirobert on 24/12/14.
 */

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.springapp.mvc.Database;
import com.springapp.mvc.Model.Account;
import org.bson.types.ObjectId;

public class AccountService {

    private String collection = "Account";

    public void createAccount(Account newAccount) {
        DB db = Database.getInstance().db;
        DBCollection table = db.getCollection(this.collection);
        table.insert(newAccount);
    }

    public Boolean checkPassword(String userId, String password) {
        DBCollection table = Database.getInstance().db.getCollection(this.collection);
        BasicDBObject searchQuery = new BasicDBObject();

        searchQuery.put("user", new ObjectId(userId));
        DBCursor cursor = table.find(searchQuery);

        if (cursor.count() > 0 && ((String)cursor.next().get("password")).equals(password)) {
            return true;
        }
        return false;
    }
}
