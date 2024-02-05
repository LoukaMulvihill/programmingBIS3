<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Payment
    Created on : 6 Dec 2023, 00:07:50
    Author     : Louka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-50">
                <h1>Checkout</h1>
                <h3>Billing Address</h3>
                <label for="fname"><i class="fa fa-user"></i> Full Name</label><!-- comment -->
                <input type="text" id="fname" name="firstname" placeholder="John Doe">
                <label for="email"><i class="fa fa-envelope"></i> E-mail</label><!-- comment -->
                <input type="text" id="email" name="email" placeholder="John@gmail.com"><!-- comment -->
                <label for="adr"><i class="fa fa-address-card"></i> Address</label><!-- comment -->
                <input type="text" id="adr" name="address" placeholder="26 Murrow Street"><!-- comment -->
                <label for="city"><i class="fa fa-city"></i> City</label><!-- comment -->
                <input type="text" id="city" name="city" placeholder="Cork"><!-- comment -->
                
                <div class="row">
                    <div class="col-50">
                        <label for="county">County</label><!-- comment -->
                        <input type="text" id="county" name="county" placeholder="Co"><!-- comment -->
                    </div>
                </div>
                     
                     
            </div>
        </div>
        
        <div class="col-50">
            <h3> Payment</h3><!-- comment -->
            
            <label for="cName"> Name on Card</label><!-- comment -->
            <input type="text" id="cName" name="cardname" placeholder="John Doe">
            <label for="cNum"> Credit card number</label><!-- comment -->
            <input type="text" id="cNum" name="cardnumber" placeholder="1111-1111-1111-1111"><!-- comment -->
            <label for="expMonth"> Exp month</label><!-- comment -->
            <input type="text" id="expMonth" name="expMonth" placeholder="September">
            <label for="expYear"> Exp Year</label><!-- comment -->
            <input type="text" id="expYear" name="expYear" placeholder="2023">
            <label for="cvv">CVV</label><!-- comment -->
            <input type="text" id="cvv" name="cvv" placeholder="123">
        </div>
            
    </body>
</html>
