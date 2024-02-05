/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DAO.SignsDAO;
import java.util.ArrayList;
import Models.Sign;

/**
 *
 * @author be_me
 */
public class SignService {
    
    public ArrayList<Sign> getHomePageProducts(){
        
        SignsDAO pDao = new SignsDAO();
        return pDao.getAllSigns(6);
        
    }
        
    
}
