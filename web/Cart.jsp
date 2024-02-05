<%-- 
    Document   : Cart
    Created on : 1 Dec 2023, 19:33:42
    Author     : Louka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" href="css\Cart.css">
    </head>
    <body>
        <div class="small container cart page">
            
            <table> 
                <tr>
                    <th>Product</th>
                    <th>Quantity</th><!-- comment -->
                    <th>Subtotal</th>
                </tr>
                <tr>
                    <td>
                        <div class="cart-info"> 
                            <div>
                                <p>Stop Sign</p>
                                <small>Price: 100</small>
                                <br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></td> 
                    <td> £100</td>
                </tr>
                 <tr>
                    <td>
                        <div class="cart-info"> 
                            <div>
                                <p>Stop Sign</p>
                                <small>Price: 100</small>
                                <br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></td> 
                    <td> £100</td>
                </tr>
                 <tr>
                    <td>
                        <div class="cart-info"> 
                            <div>
                                <p>Stop Sign</p>
                                <small>Price: 100</small>
                                <br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></td> 
                    <td> £100</td>
                </tr>
            </table>
            
            <div class="total-price">
                
                <table>
                    <tr>
                        <td>Subtotal</td>
                        <td>300</td>
                    </tr>
                     <tr>
                        <td>Delivery</td>
                        <td>0</td>
                    </tr>
                     <tr>
                        <td>Total</td>
                        <td>300</td>
                    </tr>
                </table>
            </div>            
            <form action="Payment.jsp">
                <div class="d-flex">
                    <button class="btn btn-outline-dark flex-shrink-0" type="submit">
                        <i class="bi-cart-fill me-1"></i>
                            Pay Now
                    </button>
                </div>
            </form>
    </body>
</html>
