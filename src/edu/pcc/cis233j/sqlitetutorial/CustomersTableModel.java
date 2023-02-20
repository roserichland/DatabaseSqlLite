package edu.pcc.cis233j.sqlitetutorial;

import javax.swing.table.DefaultTableModel;
import java.util.List;

public class CustomersTableModel extends DefaultTableModel {
        private final String[] COL_NAMES = {"Name", "City", "State"};
        private List<Customer> customers;
    /**
     * CustomersTableModel constructor
     * @param customers
     */
        public CustomersTableModel(List < Customer > customers) {
            super();
            this.customers = customers;

            setColumnIdentifiers(COL_NAMES);
            setRowCount(customers.size());
        }
    /**
     * allow for the setting of any customers in the future
     * @param customers
     */
        public void setCustomers (List < Customer > customers) {
            this.customers = customers;
            setRowCount(customers.size());
        }
    /**
     * provide the columns and rows to be read
     * @return Object
     * @param row
     * @param col
     */
        @Override
        public Object getValueAt ( int row, int col){
            switch (col) {
                case 0:
                    return customers.get(row).getName();
                case 1:
                    return customers.get(row).getCity();
                case 2:
                    return customers.get(row).getState();
                default:
                    return null;
            }
        }
    /**
     * decide if the cell is editable
     * @return false
     * @param col
     * @param row
     */
        @Override
        public boolean isCellEditable ( int row, int col){
            return false;
        }


}
