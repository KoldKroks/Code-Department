<%-- 
    Document   : ForgetPassword
    Created on : 23 Nov 2020, 11:08:18
    Author     : Majal
--%>
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
        <title>Password recovery</title>
    </head>
    <body>
            <center>
   
            Enter Your User Name: <input type="text" Name="UserName">
            <br>
            <br>
            <br>
            <input type="submit" name="Load" value="GET Security Password">
            <br>
            <br>
            security Question: <output></output>
            <br>
            <br>
            Type your answer Here: <input type="text" Name="Answer">
            <br>
            <br>
            <input type="submit" name="Load" value="Update Password">
            <br>
            <br>
            After update click here! <a Href="login.jsp">Login</a>
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

