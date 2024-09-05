
package humaira;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

class Department {
    // Add department method
    public void addDepartment(Connection connection, int departmentId, String departmentName) {
        try {
            // Checking if all fields are filled
            if (departmentName.isEmpty()) {
                JOptionPane.showMessageDialog(null, "Input All Details", "Invalid Entry", JOptionPane.ERROR_MESSAGE);
            } else {
                // setting values
                String query = "INSERT INTO departmentdetails(Department_ID, Department_Name) "
                             + "VALUES (?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setInt(1, departmentId);
                    preparedStatement.setString(2, departmentName);
                    preparedStatement.executeUpdate();
                }

               JOptionPane.showMessageDialog(null, "Department Added Successfully");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
