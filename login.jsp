<%-- 
    Document   : Login
    Created on : Nov 18, 2020, 7:29:50 PM
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
            width:100px;
        }
        
    </style>
    <head>
        <title>
            Login
            </title>
    </head>
    <body>
        
<% 
        String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String sourceURL = "jdbc:sqlserver://DESKTOP-5S4AU8H\\AQEELMAJAL:1433;databaseName=Forums Page;user=sa;password=password123";
        
        try{
            Class.forName(driverName);
            Connection con = null;
            con = DriverManager.getConnection(sourceURL);
            
            Statement st = con.createStatement();
            String username = request.getParameter("EmailAddress");
            String pass = request.getParameter("Passsword");
            
            ResultSet result = st.executeQuery("SELECT UsserName, Passsword FROM User Information WHERE UsserName ='" + username + "' AND Passsword = '" + pass + "'");
            
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
</html>