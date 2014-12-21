package com.springapp.mvc.dao;

/**
 * Created by remirobert on 22/12/14.
 */

import com.springapp.mvc.model.Person;

public interface PersonDAO {
    public void create(Person p);
    public Person readById(String id);
    public void update(Person p);
    public int deleteById(String id);
}