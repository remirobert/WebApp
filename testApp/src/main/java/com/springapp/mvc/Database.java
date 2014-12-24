package com.springapp.mvc;

import com.mongodb.DB;
import com.mongodb.MongoClient;

import java.net.UnknownHostException;

/**
 * Created by remirobert on 24/12/14.
 */
public class Database {

    public DB db = null;

    private Database() {
        MongoClient mongo = null;
        System.out.println("init DATABASE");
        try {
            mongo = new MongoClient( "localhost" , 27017 );
            this.db = mongo.getDB("database");
            System.out.println("init DATABASE OKAY...");

        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
    }

    private static Database INSTANCE = new Database();

    public static Database getInstance() {
        return INSTANCE;
    }
}
