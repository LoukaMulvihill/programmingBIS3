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
        <form action="AdminPageServlet" method="post">
            <input type="hidden" name="userID" value="<%= user.getUserID() %>">
            <p>ID: <%= user.getUserID() %>, Username: <%= user.getUsername() %>, UserType: <%= user.getUserType() %></p>
            
            <!-- Add form elements for actions -->
            <label>Disable User: <input type="checkbox" name="disableUser"></label>
            <label>New Password: <input type="password" name="newPassword"></label>
            <label>New User Type: <input type="text" name="newUserType"></label>
            
            <input type="submit" name="updateUser" value="Update">
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
        <label>Username: <input type="text" name="newUsername"></label>
        <label>Password: <input type="password" name="newPassword"></label>
        <label>User Type: <input type="text" name="newUserType"></label>
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

<script>
    function printText(message) {
        console.log(message);
    }
</script>