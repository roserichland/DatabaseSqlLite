package edu.pcc.cis233j.sqlitetutorial;

import java.sql.*;
import java.util.ArrayList;


/**
 * @author Rose Richl
 * @author Cara Tang
 * @version 2022.12.03
 * Modifications: changed field FIREDUP_URL to FIREDUP_DB, changed getConnection() to throw exception using FIREDUP_DB instead
 * of username and password, eliminated fields USERNAME and PASSWORD
 */
public class FiredUpDB {
    private static final String FIREDUP_DB = "jdbc:sqlite:FiredUp.db";
    private static final String CUSTOMER_SQL = "SELECT CustomerID, Name, City, StateProvince FROM CUSTOMER";
    private static final String EMAIL_SQL = "SELECT EmailAddress FROM EMAIL WHERE FK_CustomerID = ?";
    private static final String BYSTATE_SQL = "SELECT CustomerID, Name, City, StateProvince FROM CUSTOMER WHERE StateProvince = ?";
    private static final String BYCITY_SQL = "SELECT CustomerID, Name, City, StateProvince FROM CUSTOMER WHERE City = ?";
    private static final String BYNAME_SQL = "SELECT CustomerID, Name, City, StateProvince FROM CUSTOMER WHERE Name = ?";

    /**
     * read the customers in the arraylist
     *
     * @return customers
     */
    public ArrayList<Customer> readCustomers() {
        ArrayList<Customer> customers = readCustomerBasics();
        readEmailAddresses(customers);
        return customers;
    }


    /**
     * read the email addresses in the table email_sql
     *
     * @param customers
     */
    private void readEmailAddresses(ArrayList<Customer> customers) {
        try (
                Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(EMAIL_SQL)
        ) {
            for (Customer cust : customers) {
                stmt.setInt(1, cust.getId());
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    cust.addEmailAddress(rs.getString("EmailAddress"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * connect to database
     *
     * @return DriverManager.getConnection(FIREDUP_DB)
     */
    private static Connection getConnection() throws SQLException {  //imported classes from Connection, SQLException and DriverManager
        return DriverManager.getConnection(FIREDUP_DB);
    }

    /**
     * Read customer information
     *
     * @return customers
     */
    private ArrayList<Customer> readCustomerBasics() {
        ArrayList<Customer> customers = new ArrayList<Customer>();
        try (
                Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(CUSTOMER_SQL);
                ResultSet rs = stmt.executeQuery()
        ) {
            while (rs.next()) {
                customers.add(new Customer(rs.getInt("CustomerID"),
                        rs.getString("Name"),
                        rs.getString("City"),
                        rs.getString("StateProvince")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    /**
     * Read customer information when a certain state is searched for
     *
     * @return customers
     * @param state
     */
    public ArrayList<Customer> readCustomerBasicsByState(String state) {

        ArrayList<Customer> customersFromState = new ArrayList<>();
        try (
                Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(BYSTATE_SQL);


        ) {
            stmt.setString(1, state);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                customersFromState.add(new Customer(rs.getInt("CustomerID"),
                        rs.getString("Name"),
                        rs.getString("City"),
                        rs.getString("StateProvince")
                ));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customersFromState;
    }

    /**
     * Read customer information when a certain city is searched for
     *
     * @return customersFromCity
     * @param city
     */
    public ArrayList<Customer> readCustomerBasicsByCity(String city) {

        ArrayList<Customer> customersFromCity = new ArrayList<>();
        try (
                Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(BYCITY_SQL);
        ) {
            stmt.setString(1, city);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                customersFromCity.add(new Customer(rs.getInt("CustomerID"),
                        rs.getString("Name"),
                        rs.getString("City"),
                        rs.getString("StateProvince")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customersFromCity;
    }


    /**
     * Read customer information when a certain name is searched for
     *
     * @return customerByName;
     * @param name
     */

    public ArrayList<Customer> readCustomerBasicsByName(String name) {

        ArrayList<Customer> customersByName = new ArrayList<>();
        try (
                Connection conn = getConnection();
                PreparedStatement stmt = conn.prepareStatement(BYNAME_SQL);
        ) {
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                customersByName.add(new Customer(rs.getInt("CustomerID"),
                        rs.getString("Name"),
                        rs.getString("City"),
                        rs.getString("StateProvince")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customersByName;
    }

}
