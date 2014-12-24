package com.springapp.mvc.Model;

/**
 * Created by remirobert on 24/12/14.
 */

import org.bson.types.ObjectId;
import com.mongodb.BasicDBObject;

public class Account extends BasicDBObject {

    private ObjectId userId;
    private String password;

    public Account(String userId, String password) {
        super();
        this.userId = new ObjectId(userId);
        this.password = password;

        this.put("user", this.userId);
        this.put("password", this.password);
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return this.password;
    }
}
