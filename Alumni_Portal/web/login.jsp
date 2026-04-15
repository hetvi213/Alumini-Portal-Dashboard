<%-- 
    Document   : login
    Created on : 3 Aug, 2025, 10:44:59 AM
    Author     : Diya Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel ="stylesheet" href="style.css">
    </head>
    <body>
        <div class="form-container">
            <form action="LoginServlet" method="post">
                <h2>Login</h2>
                <label>Email:</label>
                <input type="email" name="email" required><br><br>

                <label>Password:</label>
                <input type="password" name="password" required><br><br>
                <input type="submit" value="Login">
                
                <a href="register.jsp">Create Account? Register</a>
            </form> 
        </div>

    </body>
</html>
