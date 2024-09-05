
package humaira;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

public class Designation {
    // Add designation method
    public void addDesignation(Connection connection, String employeeName, String designation) {
        try {
            // Checking if all fields are filled
            if (employeeName.isEmpty() || designation.isEmpty()) {
                JOptionPane.showMessageDialog(null, "Input All Details", "Invalid Entry", JOptionPane.ERROR_MESSAGE);
            } else {
                //setting values
                String query = "INSERT INTO designationdetails(Employee_Name, Designation) "
                             + "VALUES (?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setString(1, employeeName);
                    preparedStatement.setString(2, designation);
                    preparedStatement.executeUpdate();
                }

                JOptionPane.showMessageDialog(null, "Designation Added Successfully");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}