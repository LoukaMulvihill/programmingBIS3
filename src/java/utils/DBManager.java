/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.sql.Connection;
import org.apache.derby.jdbc.ClientDriver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BEmerson
 */
public class DBManager {

    Logger logger = Logger.getLogger(DBManager.class.getName());

    public DBManager() {
        
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, null, ex);
        }
        
    }
    
   

    public Connection getConnection() {


        Connection dbConnection = null;
        ClientDriver derbyClient = new ClientDriver();
        Properties props = new Properties();
        
        //String strUrl = "jdbc:derby:bills-product-db;create=true";
        String strUrl = "jdbc:derby://localhost:1527/database6692;create=true";
        try {
            dbConnection = derbyClient.connect(strUrl,props);
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, null, sqle.getStackTrace());
        }
        
        if (dbConnection != null) {
            System.out.println("CONNECTION ACQUIRED!!");
        }

        return dbConnection;

    }

}
