<%@page import="db.logbookgetsetter"%>
<%@page import="db.mahasiswa"%>
<%@page import="db.Membukalogbook"%>
<%@page import="db.SimpleDB"%>
<%@page import="db.transitlogbook"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            String nim=request.getParameter("nim");
            try{
                logbookgetsetter tl = SimpleDB.gettransitlogbookbyId(nim);
                int status;
                status = SimpleDB.insertlogbookfinal(tl);
                status = SimpleDB.deletetransitlogbook(tl.getNim());
                
                if(status>0){
                    response.sendRedirect("halamanaktif.jsp");
                    
                }
                else{
                    out.println("Sorry! unable to save record");
                }
                
            }catch(Exception e){
                out.println(e);
            }     
        %>
