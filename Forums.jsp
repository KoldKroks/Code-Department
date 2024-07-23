<%-- 
    Document   : Forums
    Created on : 23 Nov 2020, 11:39:22
    Author     : Majal
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String id = (String) session.getAttribute("user");
if(id==null){
%>
<jsp:forward page="login.jsp" />
<%
    } else{
%>
<!DOCTYPE html>
<html>
    <style>
        table, th, td{
            border: 1px solid black;
        }
        body{
            background-image: url(https://pbs.twimg.com/media/EjS_hIfUcAA1nGh.jpg:large);
        }
        .button{
            height:50px;
            width:100px;
        }
        
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forums</title>
    </head>
    <%
    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String sourceURL = "jdbc:sqlserver://DESKTOP-5S4AU8H\\AQEELMAJAL:1433;databaseName=Forums Page;user=sa;password=password123";
    
    try{
    Class.forName(driverName);
    Connection con = null;
    con = DriverManager.getConnection(sourceURL);
    
    Statement st = con.createStatement();
        
    %>
            <%
            ArrayList topic = new ArrayList();
            ArrayList topicContent = new ArrayList();
            int count = 0;
            ResultSet rs = st.executeQuery("SELECT * FROM Topic");
            while(rs.next())
            {
            topic.add(rs.getString("TopicName"));
            topicContent.add(rs.getString("Topic"));
            count++;
            }
            for(int i=0;i<count;i++)
            {
            out.println("<tr>");
            out.println("<td><font color='white'>" + topic.get(i) + "</font></td>");
            out.println("<td><a href='ForumContent.jsp?topic="+topic.get(i)+"'>View</a></td>");
            out.println("</tr>");
            }
            st.close();
            } catch(SQLException e){
            //out.println(e);
            } catch(ClassNotFoundException e){
            out.println(e);
            }
            %>
        </table>
        <br><br> <button type="button" onclick="window.location.href = 'Profile.jsp'">Profile</button> 
    </center>
    </body>
</html>
<%
    }
%>
