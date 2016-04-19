

package com.demo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;



public class Utils {

    /***************************************************************************
     *   This method provides a Connection to the Database DO NOT CHANGE IT    *
     **************************************************************************/
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Utils.class.getName()).log(Level.SEVERE, null, ex);
        }
        String jdbc = "jdbc:mysql://localhost:3306/user_login";
        return DriverManager.getConnection(jdbc, "root", "");
    }
}
