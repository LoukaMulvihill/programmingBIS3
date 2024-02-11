<%-- 
    Document   : Login
    Created on : 7 Nov 2023, 13:44:15
    Author     : Louka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en" dir="ltr">
    <head>

        <meta chartset="utf-8">
        <title>Login Form</title>
        <link rel="stylesheet" href="css/Login.css">
    </head>

    <body>
        
        <%
        
            String errorLogin = (String) request.getAttribute("incorrectLogin");
        
        %>
        <div class="center">
            <h1>Login</h1>
            <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
                <div class="txt_field">
                    <input type="text" name="email"  >
                    <label>Username</label>
                </div>
                <div class="txt_field">
                    <input type="password" name ="password" >
                    <label>Password</label>
                </div>
                <% 
                    if (errorLogin != null) {
                %>
                <p><%= errorLogin%></p>
                <%
                    }
                %>
                <div class = float-container>
                    <div class="float-child">    
                        <input id="LoginButton" type ="submit" value="Login">
                    </div>
                    <div class="float-child">
                        <a href="Homepage.jsp">Homepage</a>
                    </div>
                </div>


        </div>




    </body>
</html>
