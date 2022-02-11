<!doctype html>
<%@page import= "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                            <%
                                String nama = request.getParameter("nama");
                                String nim = request.getParameter("nim");
                                String tgl_pengajuan = request.getParameter("tgl_pengajuan");
                                String ruang = request.getParameter("ruang");
                                String tgl_peminjaman = request.getParameter("tgl_peminjaman");
                                String tgl_pengembalian = request.getParameter("tgl_pengembalian");
                                String status = request.getParameter("status");
                                String host = "jdbc:mysql://localhost:3306/logbook_db";
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection(host, "root", "");
                                    if (conn != null){
                                                    PreparedStatement pst = conn.prepareStatement("INSERT INTO peminjamanlab (nama, nim, tgl_pengajuan, ruang, tgl_peminjaman, tgl_pengembalian, status) VALUES(?,?,?,?,?,?,?)");
                                                    pst.setString(1, nama);
                                                    pst.setString(2, nim);
                                                    pst.setString(3, tgl_pengajuan);
                                                    pst.setString(4, ruang);
                                                    pst.setString(5, tgl_peminjaman);
                                                    pst.setString(6, tgl_pengembalian);
                                                    pst.setString(7, status);
                                                    pst.executeUpdate();

                                            response.sendRedirect("InputLogbook.jsp");
                                        
                                    } else {
                                        response.sendRedirect("gagalSimpanLogbook.jsp");
                                    }
                                    } catch (Exception e) {
                                    out.println("Can't connect to database. with error = " + e.getMessage());

            }
        %>
    </body>
</html>
