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
@WebServlet(name = "SignServlet", urlPatterns = {"/SignServlet"})
public class SignServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        //getting access to SignService class
        SignService mServ = new SignService();
        
        //creating an arraylist to store the list of signs
        ArrayList<Sign> signList = new ArrayList();
        
        //populating or new arraylist using the method from the Sign Service class
        signList = mServ.getAllSigns();
        
        //assigning our signList arraylist to the Request Object
        request.setAttribute("signList", signList);
        
        //sending the request to the preffered page
        RequestDispatcher rd = request.getRequestDispatcher("product.jsp");
        rd.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}

