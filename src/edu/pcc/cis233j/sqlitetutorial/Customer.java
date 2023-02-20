package edu.pcc.cis233j.sqlitetutorial;
import java.util.ArrayList;

/**
 * Created my Rose on 10/30/2022
 */
public class Customer {

    private int id;
    private String name;
    private String city;
    private String state;

    private ArrayList<String> emailAddresses;

    /**
     * Constructor
     * @param id, name, city, state
     */
    public Customer(int id, String name, String city, String state) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.state = state;
        emailAddresses = new ArrayList<>();
    }
//making significant edits to merge for test git tree
// trying to merge lesson 8 and need changes
// Why won't lab 8 merge.

    /**
     * @return id
     */
    public int getId() {
        return id;
    }
    /**
     * @return name
     */
    public String getName() {
        return name;
    }
    /**
     * @return city
     */
    public String getCity() {
        return city;
    }
    /**
     * @return state
     */
    public String getState() {
        return state;
    }
    /**
     * @param email
     */
    public void addEmailAddress(String email) {
        emailAddresses.add(email);
    }
    /**
     * @return emailAddresses
     */
    public ArrayList<String> getEmailAddresses() {
        return emailAddresses;
    }
}
