package com.springapp.mvc.Service;

/**
 * Created by remirobert on 24/12/14.
 */

import com.mongodb.DBObject;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import java.util.Date;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.springapp.mvc.Model.User;
import com.springapp.mvc.Database;
import com.sun.javafx.beans.IDProperty;
import com.sun.org.apache.xpath.internal.operations.Bool;

public class UserService {

    private String collection = "User";

    public void addUser(User newUser) {
        DB db = Database.getInstance().db;
        DBCollection table = db.getCollection(this.collection);
        table.insert(newUser);
    }

    public void removeUser(User user) {
        DBCollection table = Database.getInstance().db.getCollection("user");
        DBCursor cursor = table.find(user);

        try {
            while(cursor.hasNext()) {
                System.out.println(cursor.next());
            }
        } finally {
            cursor.close();
        }
    }

    public User isUserExist(String email) {
        DBCollection table = Database.getInstance().db.getCollection(this.collection);
        BasicDBObject searchQuery = new BasicDBObject();

        searchQuery.put("email", email);
        DBCursor cursor = table.find(searchQuery);

        if (cursor.count() > 0) {
            DBObject userDetails = cursor.next();
            User currentUser = new User((String)userDetails.get("firstName"),
                    (String)userDetails.get("lastName"),
                    (String)userDetails.get("email"),
                    (Integer)userDetails.get("typeAccount"));
            return currentUser;
        }
        return null;
    }

    public String getIdUser(User user) {
        DBCollection table = Database.getInstance().db.getCollection(this.collection);
        BasicDBObject searchQuery = new BasicDBObject();

        searchQuery.put("email", user.getEmail());
        DBCursor cursor = table.find(searchQuery);

        if (cursor.count() > 0) {
            DBObject oneDetails;
            oneDetails = cursor.next();
            String data = oneDetails.get("_id").toString();
            System.out.println("=> ID USER : " + data);
            return data;
        }

        return null;
    }
}
