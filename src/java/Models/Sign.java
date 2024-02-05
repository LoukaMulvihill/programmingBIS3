/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Louka
 */
public class Sign {
    
    private int signID;
    private String name;
    private String description;
    private String reflective;
    private String size;
    private String image;
    private String price;
    private String thickness;
    private String fixing_method;

    public Sign(int signID, String name, String description, String reflective, String size, String image, String price, String thickness, String fixing_method) {
        this.signID = signID;
        this.name = name;
        this.description = description;
        this.reflective = reflective;
        this.size = size;
        this.image = image;
        this.price = price;
        this.thickness = thickness;
        this.fixing_method = fixing_method;
    }
  
    public Sign() {
        
    }

    public int getSignID() {
        return signID;
    }

    public void setSignID(int signID) {
        this.signID = signID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getReflective() {
        return reflective;
    }
    
    public void setReflecive(String reflective) {
        this.reflective = reflective;
    }
    
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    public String getPrice() {
        return price;
    }
    
    public void setPrice(String price) {
        this.price = price;
    }
     
    public String getThickness() {
        return thickness;
    }
    
    public void setThickness(String thickness) {
        this.thickness = thickness;
    }
    
    public String getFixing_method() {
        return fixing_method;
    }
    
    public void setFixing_method(String fixing_method) {
        this.fixing_method = fixing_method;
    }
}

    

