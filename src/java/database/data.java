
package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class data {


    public static Connection connection;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_server", "root", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (connection);
    }}