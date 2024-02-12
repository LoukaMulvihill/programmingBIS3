<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.User" %>
<%@ page import="DAO.UserDAO" %>
<%@ page import="java.util.Iterator" %>

<%-- Your existing code --%>

<div>
    <h2>All Users:</h2>
    <% 
        UserDAO userDAO = new UserDAO();
        ArrayList<User> users = userDAO.getAllUsers();

        for (User user : users) {
    %>
        <form action="userAdmin" method="post">
            <input type="hidden" name="userID" value="<%= user.getUserID() %>">
            <p>ID: <%= user.getUserID() %>,NAME: <%= user.getFirstName() %> <%= user.getLastName() %>, EMAIL: <%= user.getEmail() %>, USER TYPE: <%= user.getUserType() %></p>
             <!-- Buttons for Delete and Edit actions -->
            <button type="submit" name="action" value="delete" style="margin-left: 10px;">Delete</button>
            <button type="submit" name="action" value="edit" style="margin-left: 5px;">Edit</button>
        </form>
            <hr>
    <%
        }
    %>
</div>

<div>
    <h2>Add New User</h2>
    <h6>(Not Functioning Yet)</h6>
    <!-- Add form for adding new user -->
    <form action="AdminPageServlet" method="post">
        <label>Email: <input type="text" name="newUsername"></label>
        <label>Password: <input type="password" name="newPassword"></label>
        <label>User Type:</label>
        <select name="userType">
            <option value="admin">Administrator</option>
            <option value="genUser">General User</option>
        </select>
        <input type="submit" name="addUser" value="Add User">
    </form>
</div>
<div>
    <h2>Select Report Type</h2>
    <!-- Combo box for selecting report type -->
    <form action="adminServlet" method="post">
        <label>Select Report Type:</label>
        <select name="reportType">
            <option value="userActivity">User Activity</option>
            <option value="salesReport">Sales Report</option>
            <option value="inventoryReport">Inventory Report</option>
        </select>
        <input type="submit" name="viewReport" value="View">
    </form>
</div>
<div class="list-group">
    <a href="#" class="list-group-item">Product Administration</a>
    <a href="userAdmin?action=listUsers" class="list-group-item">User Administration</a>
</div>                              


<script>
    function printText(message) {
        console.log(message);
    }
</script>