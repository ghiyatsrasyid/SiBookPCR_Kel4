<%-- 
    Document   : proseshapuslogbookmhs
    Created on : Feb 6, 2022, 4:20:50 PM
    Author     : User
--%>

<%@page import="db.transitlogbook"%>
<%@page import="db.SimpleDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String nim = request.getParameter("nim");
            int status = SimpleDB.deletetransitlogbook(nim);
            
            if(status>0) {
                response.sendRedirect("halamanaktif.jsp");
            }
            else {
                out.println("Sorry! unable to delete record");
            }
        %>
    </body>
</html>
