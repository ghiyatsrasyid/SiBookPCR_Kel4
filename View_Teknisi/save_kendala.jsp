<%-- 
    Document   : save_kendala
    Created on : Jan 13, 2022, 5:32:58 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String laboran = request.getParameter("laboran");
            System.out.println(laboran);
            String date = request.getParameter("date");
            String lab = request.getParameter("lab");
            String pc = request.getParameter("pc");
            String kendala = request.getParameter("kendala");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/logbook_db", "root", "");
                if (conn != null) {
                        PreparedStatement pst = conn.prepareStatement("insert into kendala (laboran, date, lab, pc, kendala) VALUES (?,?,?,?,?)");
                        pst.setString(1, laboran);
                        pst.setString(2, date);
                        pst.setString(3, lab);
                        pst.setString(4, pc);
                        pst.setString(5, kendala);
                        pst.executeUpdate();
                        response.sendRedirect("info.jsp");
                } else {
                    response.sendRedirect("errorsave.jsp");
                }
            } catch (Exception e) {
                out.println("Can't connect to database. with error = " + e.getMessage());

            }
        %>
    </body>
</html>
