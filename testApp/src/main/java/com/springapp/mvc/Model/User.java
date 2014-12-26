package com.springapp.mvc.Model;

/**
 * Created by remirobert on 24/12/14.
 */

import com.mongodb.BasicDBObject;

public class User extends BasicDBObject {

    private String firstName;
    private String lastName;
    private String email;
    private int typeAccount;

    public User(String firstName, String lastName, String email, int typeAccount) {
        super();
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.typeAccount = typeAccount;

        this.put("firstName", this.firstName);
        this.put("lastName", this.lastName);
        this.put("email", this.email);
        this.put("typeAccount", this.typeAccount);
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
        this.put("firstName", this.firstName);
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
        this.put("lastName", this.lastName);
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
        this.put("email", this.email);
    }

    public int getTypeAccount() {
        return this.typeAccount;
    }
}