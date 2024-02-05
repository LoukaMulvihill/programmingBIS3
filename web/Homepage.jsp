<%-- 
    Document   : Homepage
    Created on : 24 Oct 2023, 09:30:54
    Author     : Louka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Road Signs 'R' us</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css\homepage.css">
    </head>
    <body>
        <div class="Homepage"></div>
        <%
            String username = (String) session.getAttribute("username");           
        %>
        <div class="Homepage"></div>
        <div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
            <header class="masthead mb-auto">
                <div class="inner">
                    <h3 class="masthead-brand">Louka's Road Signs </h3>
                    <nav class="nav nav-masthead justify-content-center">
                     
                        <a class="nav-link" href="SignServlet">Signs</a>
                        
                        <%
                            if (username == null) {
                        %>
                        <a class="nav-link" href="Login.jsp">Login</a>
                        <%
                            } else {
                        %>
                        <a class="nav-link" href="LogoutServlet">Logout</a>
                        <%
                            }
                        %>
                        <a class="nav-link" href="Homepage.jsp">Homepage</a>
                        
                        <a class="nav-link" href="Cart.jsp">Basket</a>
                       

                        <div class="section-links">
                        <!-- Your sections: signs, login, homepage, basket -->
                        </div>
               
                    </nav>
                </div>
            </header>

            <main role="main" class="inner cover">
                <h1 class="cover-heading">Road Signs</h1>
                <p class="lead">Keep our roads safe with these road signs.</p>
                <p class="lead">
                     <a class="nav-link active" href="SignServlet">Signs</a>
                </p>
            </main>

            <footer class="mastfoot mt-auto">
                <div class="inner">
                    <p>Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
                </div>
            </footer>
        </div>


    </body>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
