package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class simDB {
    
    private static Connection con=null;
    
    public static void makeConnection(String DBName,String Username, String Password){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+DBName,Username,Password);
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
    
    public static Connection getConnection() throws SQLException {
        return con;
    }
    
    public static void closeConnection() {
        try {
            con.close();
            con=null;
        } catch (SQLException ex) {
            Logger.getLogger(simDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static boolean checkConnection(String DBName,String Username, String Password) throws SQLException{
        makeConnection(DBName, Username, Password);
        boolean stat=false;
        if(con!=null){
            stat=true;
            con.close();
            con=null;
        }
        return stat;
    }
    
    public static String saveQuery(String Query){
        String stat="";
        PreparedStatement ps;
        System.out.println(Query);
        try {
            ps = con.prepareStatement(Query);
            ps.executeUpdate();
            stat="Query Berhasil";
            ps.close();
        } catch (SQLException ex) {
            //System.out.println(ex);
            if(ex.getErrorCode()==1136){
                stat="Perhatikan Jumlah Kolom pada Query !!!";
            }else{
                stat=ex.getMessage();
            }
        }
        return stat;
    }
    
    public static ArrayList<String> getColName (String Query) throws SQLException{
        ArrayList<String> data = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        ResultSetMetaData rsMetaData;
        ps = con.prepareStatement(Query);
        rs = ps.executeQuery();
        rsMetaData = rs.getMetaData();
        for(int i = 1; i<=rsMetaData.getColumnCount();i++){
            data.add(rsMetaData.getColumnName(i));
        }
        rs.close();
        ps.close();
        return data;
    }
    
    public static ArrayList<ArrayList<String>> getData(String Query) throws SQLException{
        ArrayList<ArrayList<String>> data = new ArrayList<>();
        ArrayList<String> colName = getColName(Query);
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(Query);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    //System.out.println(rs);
                    ArrayList<String> tmp = new ArrayList<>();
                    for (int i = 1; i <=colName.size(); i++) {
                        tmp.add(rs.getString(i));
                    }
                    data.add(tmp);
                }
            }
            ps.close();
            //con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return data;
    }
    
    public static String displayTableQuery(String Query){
        String disp = "<table border='1'>";
        ArrayList<ArrayList<String>> data;
        ArrayList<String> colName;
        data = null;
        colName = null;
        try {
            data = getData(Query);
            colName = getColName(Query);
            int bar = data.size();
            int col = colName.size();
            disp += "<tr>";
            for (int i = 0; i < col; i++) {
                disp += "<th>" + colName.get(i) + "</th>";
            }
            disp += "</tr>";
            for (int i = 0; i < bar; i++) {
                disp += "<tr>";

                for (int j = 0; j < col; j++) {
                    disp += "<td>" + data.get(i).get(j) + "</td>";
                }
                disp += "</tr>";
            }
        } catch (SQLException ex) {
            disp="<h1>";
            if(ex.getErrorCode()==1064){
                disp+="Table tidak ada pada database !!!</h1>";
            }
            //System.out.println(ex.getErrorCode());
        }
        disp+="</table>";
        return disp;
    }
}
