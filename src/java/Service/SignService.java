/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DAO.SignsDAO;
import java.util.ArrayList;
import Models.Sign;

/**
 * Service class for operations related to signs.
 */
public class SignService {
    
    private SignsDAO signsDAO;

    public SignService() {
        this.signsDAO = new SignsDAO();
    }

    /**
     * Fetches all signs from the database.
     * Optionally, a limit can be specified to control the number of signs returned.
     * 
     * @param limit The maximum number of signs to retrieve. If less than 1, all signs are retrieved.
     * @return A list of signs.
     */
    public ArrayList<Sign> getAllSigns(int limit) {
        return signsDAO.getAllSigns(limit > 0 ? limit : Integer.MAX_VALUE);
    }

    /**
     * Retrieves a sign by its ID.
     * 
     * @param signID The ID of the sign to retrieve.
     * @return The sign with the specified ID, or null if not found.
     */
    public Sign getSignByID(int signID) {
        // Assuming there's a method in SignsDAO for fetching a sign by its ID
        return signsDAO.getSignByID(signID); 
    }
} 
