/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controllers;

import Models.Sign;
import Service.SignService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Louka
 */

@WebServlet(name = "SingleSignServlet", urlPatterns = {"/SingleSignServlet"})
public class SingleSignServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

          //getting access to SignService class
        SignService mServ = new SignService();
        
        //retriving the signID from the jsp page. Note: This gets sent as a String, not an int
        String signIDString = request.getParameter("signID");
        
        //convert to int 
        int signID = Integer.parseInt(signIDString);
        
        //gettign the sign using the meethod from Service class
        Sign sign = new Sign();
        sign = mServ.getSignByID(signID);
     
        //setting the sign to the request object
        request.setAttribute("singleSign", sign);
        
        //sending the request to the preffered page
        RequestDispatcher rd = request.getRequestDispatcher("SingleSign.jsp");
        rd.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}

