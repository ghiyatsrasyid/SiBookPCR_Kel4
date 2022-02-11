/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.UserModel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author USER
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses=request.getParameter("proses");
        if (proses.equals("logout")){
            HttpSession sesi=request.getSession();
            sesi.invalidate();
            response.sendRedirect("./View/FormLogin.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String proses = request.getParameter("proses");
         
        if (proses.equals("login")) {
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String hak_akses=request.getParameter("hak_akses");
            String id=request.getParameter("id");
            if (pass == null || pass.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("./View/FormLogin2.jsp");
            } else {
                UserModel pm = new UserModel();
                List<UserModel> datalogin = new ArrayList<UserModel>();

                datalogin = pm.LoginUser(email, pass);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    out.println("");
                        response.sendRedirect("./View/FormLogin2.jsp");
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("email", datalogin.get(0).getEmail());
                    session.setAttribute("id", datalogin.get(0).getId());
                    session.setAttribute("hak_akses", datalogin.get(0).getHak_akses());
                    
                    if (datalogin.get(0).getHak_akses().equals("kalab")) {
                        response.sendRedirect("./View_KaLab/history.jsp");
                    } 
                    if (datalogin.get(0).getHak_akses().equals("piclab")){
                        response.sendRedirect("./View_Pic/LogbookPeminjamanLab.jsp");
                    }
                    if (datalogin.get(0).getHak_akses().equals("teknisi")) {
                        response.sendRedirect("./View_Teknisi/data_kendala.jsp");
                    } 
                    if (datalogin.get(0).getHak_akses().equals("ilb")){
                        response.sendRedirect("./View_ILB/indexilb.jsp");
                    }
                    if (datalogin.get(0).getHak_akses().equals("mahasiswa")){
                        response.sendRedirect("./View_Mhs/InputLogbook.jsp");
                    }
                
                }
            }
        }  
    }
}
