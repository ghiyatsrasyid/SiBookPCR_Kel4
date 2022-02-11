<%-- 
    Document   : save_level
    Created on : Jan 13, 2022, 7:56:29 PM
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
            String id_kendala = request.getParameter("id_kendala");
            String laboran = request.getParameter("laboran");
            System.out.println(laboran);
            String date = request.getParameter("date");
            String lab = request.getParameter("lab");
            String pc = request.getParameter("pc");
            String kendala = request.getParameter("kendala");
            String level = request.getParameter("level");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/logbook_db", "root", "");
                if (conn != null) {
                        PreparedStatement pst = conn.prepareStatement("insert into kendala2 (laboran, date, lab, pc, kendala, level) VALUES (?,?,?,?,?,?)");
                        pst.setString(1, laboran);
                        pst.setString(2, date);
                        pst.setString(3, lab);
                        pst.setString(4, pc);
                        pst.setString(5, kendala);
                        pst.setString(6, level);
                        pst.executeUpdate();
                        PreparedStatement pst1 = conn.prepareStatement("DELETE FROM kendala WHERE id_kendala=?");
                        out.println(id_kendala);
                        pst1.setString(1, id_kendala);
                        pst1.executeUpdate();
                        response.sendRedirect("data_kendala.jsp");
                } else {
                    response.sendRedirect("errorsave.jsp");
                }
            } catch (Exception e) {
                out.println("Can't connect to database. with error = " + e.getMessage());
            }
        %>
    </body>
</html>
