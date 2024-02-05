/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;


/**
 *
 * @author Louka
 */
public class DBCreationRunner extends HttpServlet{

    @Override
    public void init() throws ServletException {
        super.init();
        SetupDB sdb = new SetupDB();
        sdb.createTables();
        sdb.insertSetupData(); //To change body of generated methods, choose Tools | Templates.
        sdb.showData();// Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }


    
    
    
      
  

}
