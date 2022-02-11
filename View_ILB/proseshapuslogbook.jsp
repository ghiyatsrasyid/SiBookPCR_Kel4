<%-- 
    Document   : proseshapuslogbook
    Created on : Feb 6, 2022, 4:25:47 PM
    Author     : User
--%>

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
            String idLab = request.getParameter("idLab");
            int status = SimpleDB.deletelogbook(idLab);
            
            if(status>0) {
                response.sendRedirect("indexilb.jsp?halaman=forms-advanced");
            }
            else {
                out.println("Sorry! unable to delete record");
            }
        %>
    </body>
</html>
