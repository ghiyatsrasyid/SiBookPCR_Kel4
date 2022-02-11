<%@page import="db.SimpleDB"%>
<%@page import="db.Membukalogbook"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //String id=request.getParameter("id");
            String idLab=request.getParameter("idLab");
            String jam=request.getParameter("jam");
            String tanggal=request.getParameter("tanggal");
            String sks=request.getParameter("sks");
            String kegiatan=request.getParameter("kegiatan");
            String idilb=request.getParameter("dosen");
            String jumlahmhs=request.getParameter("jumlahmahasiswa");
//                        out.println(id);
//                        out.println(idLab);
//                        out.println(jam);
//                        out.println(tanggal);
//                        out.println(sks);
//                        out.print(kegiatan);
//                        out.print(idilb);
//                        out.print(jumlahmhs);
            try{
                Membukalogbook d=new Membukalogbook();
                //d.setId(id);
                d.setIdLab(idLab);
                d.setJam(jam);
                d.setTanggal(tanggal);
                d.setSks(sks);
                d.setNamakegiatan(kegiatan);
                d.setilb(idilb);
                d.setJumlahmahasiswa(jumlahmhs);

                int status = SimpleDB.insertmembukalogbook(d);
                if(status>0){
                    response.sendRedirect("halamanaktif.jsp?idLab="+idLab);
                    
                }
                else{
                    out.println("Sorry! unable to save record");
                }
            }catch(Exception e){
                out.println(e);
            }
                    
        %>
    </body>
</html>
