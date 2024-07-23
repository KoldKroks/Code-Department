<%-- 
    Document   : signup
    Created on : 23 Nov 2020, 11:08:32
    Author     : Majal
--%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.Set"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <style>
        body{
            background-image: url(https://pbs.twimg.com/media/EjS_hIfUcAA1nGh.jpg:large);
        }
        .button{
            height:50px;
            width:50px;
        }

    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
    </head>
    <body>
    <center>
        <h1>Sign Up Here!</h1>
         <table>
                <tr>
                    <td>EmailAddress:</td>
                    <td>
                        <input type="text" Name="NewUsername">
                    </td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" Name="Newname">
                    </td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td>
                        <input type="text" Name="NewSurname">
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <input type="password" Name="NewPass">
                    </td>
                <tr>
                 <tr>
                    <td>Security Question:</td>
                    <td>
                        <input type="text" Name="SecQuestion">
                    </td>
                </tr>
            </table>
                <br>
                <input type="Submit" name="SignUp" value="Sign Up">
                <br>
                <br>
        <a Href="index.html">Have an account? Login </a>
    </center>
    <% 
        String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String sourceURL = "jdbc:sqlserver://DESKTOP-5S4AU8H\\AQEELMAJAL:1433;databaseName=Forums Page;user=sa;password=password123";
        
        try{
            Class.forName(driverName);
            Connection con = null;
            con = DriverManager.getConnection(sourceURL);
            
            Statement st = con.createStatement();
            String username = request.getParameter("LoginUser");
            String pass = request.getParameter("LoginPass");
            
            ResultSet result = st.executeQuery("SELECT Username, Password FROM People WHERE username ='" + username + "' AND Password = '" + pass + "'");
            
            if(result.next()){
            session.setAttribute("user", username);
    
            %>
            <jsp:forward page="Forums.jsp"/>
            <%
                } else {
                out.println("<center>");
                out.println("<h3><font color='red'>Incorrect username or password</font></h3>");
                out.println("<br>");
                out.println("<a href='Login.html'>Retry</a>");
                out.println("</center>");
            }
                st.close();
            } catch(SQLException e){
                out.println(e);
            } catch(ClassNotFoundException e){
                out.println(e);
            }
                %>
    </body>
    </body>
</html>

