<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.User"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Mighty Posters</title>


    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      
        </nav>
        <div class="col-lg-12">
            <br/>
        </div>
        <!-- Page Content -->
        <div class="container bg-light">

            <div class="row">

                <div class="col-lg-12">

                    <h1 class="my-4">Edit User</h1>



                    <div class="row">
                        <c:url value="/userAdmin" var="updateUserUrl">
                                        <c:param name="action" value="updateCompleteUser"/>
                                    </c:url>

                        <form action="${updateUserUrl}" method="POST">
                            <input id="id" name="id" type="hidden" value="${oldUser.id}">
                            <div class="form-group row">
                                <label for="email" class="col-4 col-form-label">Email</label> 
                                <div class="col-8">
                                    <input id="email" name="email" type="text" value="${oldUser.email}" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="password" class="col-4 col-form-label">Password</label> 
                                <div class="col-8">
                                    <input id="password" name="password" type="text" value="${oldUser.password}" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="firstName" class="col-4 col-form-label">First Name</label> 
                                <div class="col-8">
                                    <input id="firstName" name="firstName" type="text" value="${oldUser.firstName}" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="lastName" class="col-4 col-form-label">Last Name</label> 
                                <div class="col-8">
                                    <input id="lastName" name="lastName" type="text" value="${oldUser.lastName}" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row"> 
                                <div class="col-8">
                                    <form action="adminServlet" method="post">
                                        <label>USER Type:</label>
                                            <select name="reportType">
                                                <option value="userActivity">Administrator</option>
                                                <option value="salesReport">General User</option>
                                            </select>
                                    </form>
                                    
                                    
                                </div>
                            </div> 
                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form> 
                                
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->
        <div class="col-lg-12">
            <br/>
        </div>
        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
