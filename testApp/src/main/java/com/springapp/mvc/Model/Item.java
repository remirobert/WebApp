package com.springapp.mvc.Model;

/**
 * Created by remirobert on 26/12/14.
 */

import com.mongodb.BasicDBObject;

public class Item extends BasicDBObject {

    private String nameItem;
    private String price;
    private Integer quantity;

    public Item(String nameItem, String price, Integer quantity) {
        super();

        this.nameItem = nameItem;
        this.price = price;
        this.quantity = quantity;

        this.put("nameItem", this.nameItem);
        this.put("price", this.price);
        this.put("quantity", this.quantity);
    }

    public Integer getQuantity() {
        return this.quantity;
    }

    public String getNameItem() {
        return this.nameItem;
    }

    public String getPrice() {
        return this.price;
    }
}
