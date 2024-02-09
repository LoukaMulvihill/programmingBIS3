/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;
import Models.Sign;
import Models.User;
import utils.DBManager;

/**
 *
 * @author be_me
 */
public class SignsDAO {
    
    /* Gets number of top signs specified */
    /* we are gonna fake this one */
    public ArrayList<Sign> getAllSigns(int numsigns){
        
        
        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int signId = 0;
        String name = null;
        String description = null;
        String price = null;
        String imageLocation = null;
        String category = null;

        ArrayList<Sign> signData = new ArrayList();

        String query = "SELECT * FROM SIGNS";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            int signCount = 0;
            while (rs.next()) {
                if (signCount >= numsigns)
                    break;
                signId = (rs.getInt(1));
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getString(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
                Sign sign = new Sign();
                sign.setSignID(signId);
                sign.setName(name);
                sign.setDescription(description);
                sign.setPrice(price);
                sign.setImageLocation(imageLocation);
                sign.setCategory(category);
                signData.add(sign);
                signCount++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return signData;
        
         
        
    }
    
}

