
package humaira;

public class User {
    private String username;
    private String password;
    private String employeeType;

    public User(String username, String password, String employeeType) {
        this.username = username;
        this.password = password;
        this.employeeType = employeeType;
    }  
    
    public String getEmployeeType() {
        return employeeType;
    }
}
