/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

/**
 *
 * @author Louka
 */
public class StringUtils {
    
    public static boolean isStringEmpty(String input){
        if (input == null){
            return true;
        }
        else if (input.length()==0){
            return true;
        }
        else return false;
    }
    
}

