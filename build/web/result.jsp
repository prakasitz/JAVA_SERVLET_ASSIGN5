<%-- 
    Document   : result.js
    Created on : Feb 23, 2019, 3:41:57 PM
    Author     : praka
--%>
<%@page import="assign5.student.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import = "assign5.student.*"%>
        <% String head = config.getServletContext().getInitParameter("assign");
           out.print(head);
        %>
        <br>
        <%
            String id = request.getParameter("id");
            Student std = StudentDB.getStudentById(id);
            if(std == null) {
                out.println("Not Found!<br>");
            } else {
        %>
        <br>
        id =
        <%= std.getId()%>
        <br>
        name =
        <%= std.getName() %>
        <br>
        lastname =
        <%= std.getLastname()%>
        <% } %>
       
    </body>
</html>
