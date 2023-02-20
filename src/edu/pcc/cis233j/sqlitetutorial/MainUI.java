package edu.pcc.cis233j.sqlitetutorial;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.ArrayList;

/**
 * GUI to access a future customer databaseSearch for customers in a database using name, city, and state criteria
 * Features: search bar, search all states, search all customers
 * Current features allow for possibility of searching for all customers in the database, all customers in a state,
 * all customers of that name in the database, all customers of that name in a state, including the option of using a city or not.
 * Version 11.21.2022 provides error messages for features expected to develop, including searching all states, searching within states,
 * and searching all customers.
 * Version 12.22.2022 Adds functionality by including searches for names, cities, states, while sanitizing and validating input.
 *
 * @author Rose Richland
 * @author Cara Tang
 * @version 11.21.2022
 * @author Rose Richland
 * @version 12.11.2022
 */
public class MainUI {
    private JPanel rootPanel;
    private JButton findButton; //FIND button in lower right-hand corner
    private JTable customerTable; // Data table in GUI
    private JComboBox stateCombo; // State dropdown in GUI
    private JTextField nameField; // Name field in GUI
    private JTextField cityField; // City field in GUI
    private JLabel stateLabel; // State label in GUI
    private JLabel cityLabel; // City label in GUI
    private JLabel resultsLabel; // Results label in GUI
    private JLabel nameLabel; // Name label in GUI
    private JCheckBox allStatesCheckBox; // Checkbox next to the State field
    private JCheckBox allNamesCheckBox; // Checkbox next to the Names Field
    private JButton clearButton; //clears the results table
    private ArrayList<String> states; // The array that populates the state field options
    private boolean searchAllStates; // whether the "ALL" for states is checked
    private boolean searchAllCustomers; // whether the "ALL" for customers is checked

    private Customer customers; //field for table Customers


    public MainUI() {
        //rootPanel.setPreferredSize(new Dimension(1100, 800));
        states = populateStates(); // put the state options in the array to populate dropdown later
        createCityField(); //create the field for city text input
        createStateCombo(); //Create dropdown for states
        createNameField(); // create the field for users to input names
        searchAllStates = searchAllStatesWhenChecked(); //default searchAllStates behavior
        searchAllCustomers = searchAllCustomersWhenChecked(); //default searchAllCustomers behavior

        /**
         What the button does when you click it: calls various methods to determine which boxes are checked and decide which section to search
         @param ActionEvent e (clicking the FIND button)
         @return void
         */
        findButton.addActionListener(new ActionListener() {
            @Override

            public void actionPerformed(ActionEvent e) {
                if ((cityField.getText().contains("(") || cityField.getText().contains("'") || cityField.getText().contains("*") || cityField.getText().contains("|") || cityField.getText().contains("&") || cityField.getText().contains("\"") || cityField.getText().contains("{") || cityField.getText().contains("[") || cityField.getText().contains("$") || cityField.getText().contains("%")) || (nameField.getText().contains("(") || nameField.getText().contains("'") || nameField.getText().contains("*") || nameField.getText().contains("|") || nameField.getText().contains("&") || nameField.getText().contains("\"") || nameField.getText().contains("{") || nameField.getText().contains("{") || nameField.getText().contains("$") || nameField.getText().contains("%"))) {
                    JOptionPane.showMessageDialog(rootPanel, "Illegal characters entered");
                } else {
                    if ((searchAllStatesWhenChecked() == true) && (searchAllCustomersWhenChecked() == true)) {
                        showAllResultsTable();
                    } else if ((searchAllCustomersWhenChecked() == true) && (searchAllStatesWhenChecked() == false)) {
                        if (cityField.getText().equals("")) {
                            searchByState();// when checked, search database for "all" states
                        } else {
                            searchByCity(); //known error that you can search for the city and it not necessarily be within the state  as well.
                        }
                    } else if ((searchAllCustomersWhenChecked() == false) && ((nameField.getText().contentEquals("")) || (searchAllStatesWhenChecked() == false))) {
                        JOptionPane.showMessageDialog(rootPanel, "There's a checkbox to click or a field you need to fill out.");
                    } else {
                        searchByName();
                    }
                }/**/
                    }



        });
/**
 * Invoked when an item has been selected or deselected by the user.
 * The code written for this method performs the operations
 * that need to occur when an item is selected (or deselected).
 *
 * @param e the event to be processed
 */
        allNamesCheckBox.addItemListener(new

                                                 ItemListener() { //when checkbox is checked, turn field grey to indicate "al
                                                     @Override
                                                     public void itemStateChanged(ItemEvent e) {
                                                         if (allNamesCheckBox.isSelected() == true) {
                                                             nameField.setEnabled(false);
                                                             nameField.setBackground(Color.lightGray);
                                                             nameLabel.setText("Searching All Names");
                                                         } else {
                                                             nameField.setEnabled(true);
                                                             nameField.setBackground(Color.white);
                                                             nameLabel.setText("Searching for Name:");
                                                         }
                                                     }
                                                 });
        allStatesCheckBox.addItemListener(new

                                                  ItemListener() { //when checkbox is checked, the field is disabled and cannot be chosen
                                                      /**
                                                       * Invoked when an item has been selected or deselected by the user.
                                                       * The code written for this method performs the operations
                                                       * that need to occur when an item is selected (or deselected).
                                                       *
                                                       * @param e the event to be processed
                                                       */
                                                      @Override
                                                      public void itemStateChanged(ItemEvent e) {
                                                          if (allStatesCheckBox.isSelected() == true) {
                                                              stateCombo.setEnabled(false);
                                                              cityField.setEnabled(false);
                                                              stateCombo.setBackground(Color.lightGray);
                                                              cityField.setBackground(Color.lightGray);
                                                              stateLabel.setText("Searching States:");

                                                          } else {
                                                              stateCombo.setEnabled(true);
                                                              cityField.setEnabled(true);
                                                              cityField.setBackground(Color.white);
                                                              stateCombo.setBackground(Color.white);
                                                              stateLabel.setText("Searching State:");
                                                          }
                                                      }

                                                  });
        clearButton.addActionListener(new

                                              ActionListener() {
                                                  /**
                                                   * Invoked when an action occurs.
                                                   * clear the table (also for meeting requirements for second action listener)
                                                   * @param e the event to be processed
                                                   */
                                                  @Override
                                                  public void actionPerformed(ActionEvent e) {
                                                      CustomersTableModel model = (CustomersTableModel) customerTable.getModel();
                                                      model.setRowCount(0); //resets the rows to zero
                                                  }
                                              });
    }

    /**
     * Table displays all results from the database with no filtering
     *
     * @return void
     */
    private void showAllResultsTable() {
        FiredUpDB firedUp = new FiredUpDB(); //new database with current data
        ArrayList<Customer> customers = firedUp.readCustomers(); //new arraylist of individual customer objects
        CustomersTableModel tableModel = new CustomersTableModel(customers); //put customers into model
        customerTable.setModel(tableModel);    //put model into jtable

    }

    /**
     * Table displays all results from a particular state
     *
     * @return void
     */
    private void searchByState() {
        FiredUpDB firedUp = new FiredUpDB(); //new database with current data
        String state = getState(); //the user input
        ArrayList<Customer> customers = firedUp.readCustomerBasicsByState(state); //new arraylist of individual customer objects when state is "?"
        CustomersTableModel tableModel = new CustomersTableModel(customers); //put customers into model
        customerTable.setModel(tableModel);    //put model into jtable
    }

    /**
     * Table displays all results from the database from a particular city with the exact name entered
     *
     * @return void
     */
    private void searchByCity() {
        FiredUpDB firedUp = new FiredUpDB(); //new database with current data
        String city = getCity(); //the user input
        ArrayList<Customer> customers = firedUp.readCustomerBasicsByCity(city); //new arraylist of individual customer objects when state is "?"
        CustomersTableModel tableModel = new CustomersTableModel(customers); //put customers into model
        customerTable.setModel(tableModel);    //put model into jtable
    }

    /**
     * Table displays all results from the database with the exact name entered
     *
     * @return void
     */
    private void searchByName() {
        FiredUpDB firedUp = new FiredUpDB(); //new database with current data
        String name = getName(); //the user input
        ArrayList<Customer> customers = firedUp.readCustomerBasicsByName(name); //new arraylist of individual customer objects when state is "?"
        CustomersTableModel tableModel = new CustomersTableModel(customers); //put customers into model
        customerTable.setModel(tableModel);    //put model into jtable
    }

    /**
     * get text for the City field
     *
     * @return void
     */
    private void createCityField() { // get text from city field
        cityField.getText();
    }

    /**
     * Create the combobox selector and add items to it
     *
     * @return void
     */
    private void createStateCombo() { // create combo and add the items to the combo dropdown
        for (String item : states) {
            stateCombo.addItem(item);
        }
    }

    /**
     * Get the text for the name field
     *
     * @return void
     */
    private void createNameField() { // create field for names to be entered
        nameField.getText();
    }

    /**
     * get text for the name field
     *
     * @return void
     */
    public String getName() { // get text from name field
        return nameField.getText();
    }

    /**
     * Create the root panel
     *
     * @return void
     */
    public JPanel getRootPanel() { //create main panel
        return rootPanel;
    }

    /**
     * Create the arraylist of valid states from which users can select
     *
     * @return <ArrayList<String> states
     */
    private ArrayList<String> populateStates() { //list of states to populate combo
        ArrayList<String> states = new ArrayList<>();
        states.add("AK");
        states.add("AL");
        states.add("AR");
        states.add("AZ");
        states.add("CA");
        states.add("CO");
        states.add("CT");
        states.add("DE");
        states.add("FL");
        states.add("GA");
        states.add("HI");
        states.add("IA");
        states.add("ID");
        states.add("IL");
        states.add("IN");
        states.add("KS");
        states.add("KY");
        states.add("LA");
        states.add("MA");
        states.add("MD");
        states.add("ME");
        states.add("MI");
        states.add("MN");
        states.add("MO");
        states.add("MS");
        states.add("MT");
        states.add("NC");
        states.add("ND");
        states.add("NE");
        states.add("NH");
        states.add("NJ");
        states.add("NM");
        states.add("NV");
        states.add("NY");
        states.add("OH");
        states.add("OK");
        states.add("OR");
        states.add("PA");
        states.add("RI");
        states.add("SC");
        states.add("SD");
        states.add("TN");
        states.add("TX");
        states.add("UT");
        states.add("VA");
        states.add("VT");
        states.add("WA");
        states.add("WI");
        states.add("WV");
        states.add("WY");

        return states;
    }

    public String getState() {
        return stateCombo.getSelectedItem().toString();
    }

    public String getCity() {
        return cityField.getText();
    }

    /**
     * Action mutator for statebox when listening for button-press (button-press goes through this if-else before returning)
     *
     * @return boolean searchAllStates
     */
    private boolean searchAllStatesWhenChecked() { // option for state search checkbox
        boolean searchAllStates = false;
        if (allStatesCheckBox.isSelected()) {
            searchAllStates = true;
        } else {
            searchAllStates = false;
        }
        return searchAllStates;
    }

    /**
     * Action mutator for customer box when listening for button-press (button-press goes through this if-else before returning)
     *
     * @return boolean searchAllCustomers
     */
    private boolean searchAllCustomersWhenChecked() { // option for customer search checkbox
        boolean searchAllCustomers = false;
        if (allNamesCheckBox.isSelected()) {
            searchAllCustomers = true;
        } else {
            searchAllCustomers = false;
        }
        return searchAllCustomers;
    }

}
