<%@page import="db.transitlogbook"%>
<%@page import="db.Membukalogbook"%>
<%@page import="db.SimpleDB"%>
<%@page import="db.mahasiswa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nim=request.getParameter("nim");
    String namamhs=request.getParameter("namamhs");
    String nopc=request.getParameter("nopc");
    String lab=request.getParameter("idLab");
    String tanggal = request.getParameter("tanggal");
    String jam=request.getParameter("jam");
    String sks =request.getParameter("sks");
    String namakegiatan = request.getParameter("namakegiatan");
    String idilb = request.getParameter("idilb");
    String jammhs=request.getParameter("jammhs");
    
        try{
            mahasiswa m=new mahasiswa();
            Membukalogbook l=new Membukalogbook();
            //d.setId(id);
            m.setNim(nim);
            m.setNamamhs(namamhs);
            m.setNopc(nopc);
            l.setIdLab(lab);
            l.setJam(jam);
            l.setTanggal(tanggal);
            l.setSks(sks);
            l.setNamakegiatan(namakegiatan);
            l.setilb(idilb);
            m.setJammhs(jammhs);

            int status = SimpleDB.insertlogbook(m,l);
            if(status>0){
                session.setAttribute("idlab", lab);
                response.sendRedirect("berhasilmengisilogbook.jsp");                                   
            }
            else{
                out.println("ssss");
            }
        }catch(Exception e){
            out.println(e);
        }            
        %>
