/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Felly Chandra
 */
public class Koneksi {
    private Connection con;
   private Statement stmt;
   private ResultSet ReSu;
   private PreparedStatement PreSta;
   private String dsn;
   private String login;
   private String pwd;

    public Koneksi(String dsn, String login, String pwd) {
        this.dsn = dsn;
        this.login = login;
        this.pwd = pwd;
    }
   public Connection connect() throws ClassNotFoundException,SQLException{
       Class.forName("com.mysql.jdbc.Driver");
       con= DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dsn,login,pwd);
       stmt=con.createStatement();
       return con;
   }
   public int executeUpadate(String str) throws SQLException{
       return stmt.executeUpdate(str);
   }
   public ResultSet executeQuery(String str) throws SQLException{
       ReSu=stmt.executeQuery(str);
       return ReSu;
   }
   public void disconnect() throws SQLException{
       if(ReSu != null){
           ReSu.close();
       }
        if(stmt != null){
            stmt.close();
        }
        if(con != null){
            con.close();
        }
   }
   public Statement getStmt(){
       return stmt;
   } 
   public ResultSet getResultSet(){
       return ReSu;
   }   
   public PreparedStatement getPreparedStatement(String str) throws SQLException{
       PreSta=con.prepareStatement(str);
       return PreSta;
   }
}
