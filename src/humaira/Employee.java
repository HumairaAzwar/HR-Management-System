
package humaira;

import java.sql.Connection;
import javax.swing.JOptionPane;
import java.sql.PreparedStatement;

class Employee {

    // Add employee method
    public void addEmployee(Connection connection, String empDesig, String empName, String empGender, int empAge,
                           String empAddress, String empNIC, String empContNo, String empDepartment, String empEPF) {
        try {
            // Checking if all fields are filled
            if (empDesig.isEmpty() || empName.isEmpty() || empAddress.isEmpty() || empNIC.isEmpty() ||
                empContNo.isEmpty() || empDepartment.isEmpty() || empEPF.isEmpty()) {  
                JOptionPane.showMessageDialog(null, "Input All Details", "Invalid Entry", JOptionPane.ERROR_MESSAGE);
            } else {
                // setting values
                String query = "INSERT INTO EmployeeDetails(Designation, Name, Age, Gender, Address, NIC, Contact_No, Department, EPF_No) "
                             + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setString(1, empDesig);
                    preparedStatement.setString(2, empName);
                    preparedStatement.setInt(3, empAge);
                    preparedStatement.setString(4, empGender);
                    preparedStatement.setString(5, empAddress);
                    preparedStatement.setString(6, empNIC);
                    preparedStatement.setString(7, empContNo);
                    preparedStatement.setString(8, empDepartment);
                    preparedStatement.setString(9, empEPF);

                    preparedStatement.executeUpdate();
                }

                JOptionPane.showMessageDialog(null, "Employee Added Successfully");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
