package db;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class SimpleDB {   
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/logbook_db","root","");
        }catch(Exception e){
        System.out.println(e);
        }
        return con;
    }
    public static boolean checkConnection(){
        boolean stat=false;
        Connection con= getConnection();
        if (con!=null) {
            stat=true;
        }
        return stat;
    }
    
    // LAB
    public static List<Lab> Lab(){
        List<Lab> list=new ArrayList<Lab>();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT * FROM lab");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Lab e=new Lab();
                e.setIdLab(rs.getString("idLab"));
                e.setNamaLab(rs.getString("namaLab"));
                e.setJumlahPc(rs.getInt("jumlahPc"));
                list.add(e);
                }
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public static Lab getlabbyId(String id){
        Lab e=new Lab();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from lab where idLab=?");
            ps.setString(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
            e.setIdLab(rs.getString(1));
            e.setNamaLab(rs.getString(2));
            e.setJumlahPc(rs.getInt(3));
            }
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return e;
    }
    public static Membukalogbook dapatlogbook(String id){
        Membukalogbook e=new Membukalogbook();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from membukalogbook where idLab=?");
            ps.setString(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
            e.setId(rs.getString(1));
            e.setIdLab(rs.getString(2));
            e.setJam(rs.getString(3));
            e.setNamakegiatan(rs.getString(4));
            e.setSks(rs.getString(5));
            e.setTanggal(rs.getString(6));
            e.setilb(rs.getString(7));
            e.setJumlahmahasiswa(rs.getString(8));
            }
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return e;
    }
    public static int insertmembukalogbook(Membukalogbook d){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into membukalogbook(idLab,jam, tanggal, sks, namakegiatan, idilb, jumlahmhs) values (?,?,?,?,?,?,?)");
            //ps.setString(1,d.getId());
            ps.setString(1,d.getIdLab());
            ps.setString(2,d.getJam());
            ps.setString(3,d.getTanggal());
            ps.setString(4,d.getSks());
            ps.setString(5,d.getNamakegiatan());
            ps.setString(6,d.getilb());
            ps.setString(7,d.getJumlahmahasiswa());
            status=ps.executeUpdate();
            
            con.close();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    
    public static List<Membukalogbook> getidlabonmembukalogbook(){
        List<Membukalogbook> list=new ArrayList<Membukalogbook>();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT * FROM membukalogbook");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Membukalogbook e=new Membukalogbook();
                e.setIdLab(rs.getString("idLab"));
                e.setJam(rs.getString("jam"));
                e.setJumlahmahasiswa(rs.getString("jumlahmhs"));
                e.setTanggal(rs.getString("tanggal"));
                list.add(e);
                }
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public static List<Membukalogbook> getdatamembukalogbook(String idLab){
        List<Membukalogbook> list=new ArrayList<Membukalogbook>();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT * FROM membukalogbook WHERE idLab=?");
            ps.setString(1,idLab);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Membukalogbook e=new Membukalogbook();
                e.setIdLab(rs.getString("idLab"));
                e.setJam(rs.getString("jam"));                
                e.setTanggal(rs.getString("tanggal"));
                e.setSks(rs.getString("sks"));
                e.setNamakegiatan(rs.getString("namakegiatan"));
                e.setilb(rs.getString("idilb"));
                e.setJumlahmahasiswa(rs.getString("jumlahmhs"));
                list.add(e);
                }
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public static List<Lab> getidlablab(){
        List<Lab> list=new ArrayList<Lab>();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT idLab FROM lab");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Lab e=new Lab();
                e.setIdLab(rs.getString("idLab"));
                list.add(e);
            }
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
        public static int insertmahasiswa(mahasiswa m){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into transitlogbook(nim,namamhs, nopc) values (?,?,?)");
            ps.setString(1,m.getNim());
            ps.setString(2,m.getNamamhs());
            ps.setString(3,m.getNopc());
            status=ps.executeUpdate();
            
            con.close();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    public static int selectmembukalogbook(Membukalogbook m){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("Select * from membukalogbook");
            //ps.setString(1,d.getId());
            ps.setString(1,m.getId());
            ps.setString(2,m.getIdLab());
            ps.setString(3,m.getJam());
            ps.setString(4,m.getTanggal());
            ps.setString(5,m.getSks());
            ps.setString(6,m.getNamakegiatan());
            ps.setString(7,m.getIdLab());
            ps.setString(8,m.getJumlahmahasiswa());
            status=ps.executeUpdate();
            
            con.close();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
        
     public static int select(mahasiswa m){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("Select nim, namamhs from transitlogbook");
            //ps.setString(1,d.getId());
            ps.setString(1,m.getNim());
            ps.setString(2,m.getNamamhs());
            status=ps.executeUpdate();
            
            con.close();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
        
    public static int selectmahasiswa(mahasiswa m){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("Select nim, namamhs from transitlogbook");
            //ps.setString(1,d.getId());
            ps.setString(1,m.getNim());
            ps.setString(2,m.getNamamhs());
            status=ps.executeUpdate();
            
            con.close();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
//    public static List<transitlogbook> gettransitlogook(){
//        List<transitlogbook> list=new ArrayList<transitlogbook>();
//        try{
//            Connection con=SimpleDB.getConnection();
//            PreparedStatement ps=con.prepareStatement("SELECT * FROM transitlogbook");
//            ResultSet rs=ps.executeQuery();
//            while(rs.next()){
//                transitlogbook e=new transitlogbook();
//                e.setNim(rs.getString("nim"));
//                e.setNamamhs(rs.getString("namamhs"));
//                e.setNopc(rs.getString("nopc"));
//                e.setIdLab(rs.getString("idLab"));
//                e.setJam(rs.getString("jam"));
//                e.setTanggal(rs.getString("tanggal"));
//                e.setSks(rs.getString("sks"));
//                e.setNamakegiatan(rs.getString("Namakegiatan"));
//                e.setIdilb(rs.getString("idIlb"));
//                e.setJammhs(rs.getString("jamMhs"));
//                e.setNopcint(rs.getInt("nopc"));
//                list.add(e);
//                }
//            con.close();
//        }catch(Exception e){
//            e.printStackTrace();
//        }
//        return list;
//    }
    
    public static  List<transitlogbook> gettransitlogook(String id){
        List<transitlogbook> list=new ArrayList<transitlogbook>();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from transitlogbook where idLab=?");
            ps.setString(1,id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                transitlogbook e = new transitlogbook();
                e.setNim(rs.getString(1));
                e.setNamamhs(rs.getString(2));
                e.setNopc(rs.getString(3));
                e.setIdLab(rs.getString(4));
                e.setJam(rs.getString(5));
                e.setTanggal(rs.getString(6));
                e.setSks(rs.getString(7));
                e.setNamakegiatan(rs.getString(8));
                e.setIdilb(rs.getString(9));
                e.setJammhs(rs.getString(10));
                list.add(e);
            }
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return list;
    }
    
    public static List<transitlogbook> getlogookmhs(){
        List<transitlogbook> list=new ArrayList<transitlogbook>();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT * FROM logbookmhs");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                transitlogbook e=new transitlogbook();
                e.setNim(rs.getString("nim"));
                e.setNamamhs(rs.getString("namamhs"));
                e.setNopc(rs.getString("nopc"));
                e.setIdLab(rs.getString("idLab"));
                e.setJam(rs.getString("jam"));
                e.setTanggal(rs.getString("tanggal"));
                e.setSks(rs.getString("sks"));
                e.setNamakegiatan(rs.getString("Namakegiatan"));
                e.setIdilb(rs.getString("idIlb"));
                e.setJammhs(rs.getString("jamMhs"));
                e.setNopcint(rs.getInt("nopc"));
                list.add(e);
                }
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public static logbookgetsetter gettransitlogbookbyId(String id){
        logbookgetsetter e=new logbookgetsetter();
       // Membukalogbook t=new Membukalogbook();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from transitlogbook where nim=?");
            ps.setString(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
            e.setNim(rs.getString(1));
            e.setNamamhs(rs.getString(2));
            e.setNopc(rs.getString(3));
            e.setIdLab(rs.getString(4));
            e.setJam(rs.getString(5));
            e.setTanggal(rs.getString(6));
            e.setSks(rs.getString(7));
            e.setNamakegiatan(rs.getString(8));
            e.setIdilb(rs.getString(9));
            e.setJammhs(rs.getString(10));
            }
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return e;
    }
    
    public static int insertlogbook(mahasiswa d, Membukalogbook m){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into transitlogbook(nim, namamhs, nopc,idLab, jam, tanggal, sks, namakegiatan, idilb,jammhs) values (?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,d.getNim());
            ps.setString(2,d.getNamamhs());
            ps.setString(3,d.getNopc());
            ps.setString(4,m.getIdLab());
            ps.setString(5,m.getJam());
            ps.setString(6,m.getTanggal());
            ps.setString(7,m.getSks());
            ps.setString(8,m.getNamakegiatan());
            ps.setString(9,m.getilb());
            ps.setString(10,d.getJammhs());
            status=ps.executeUpdate();
            con.close();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    public static int insertlogbookfinal(logbookgetsetter m){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into logbookmhs(nim, namamhs, nopc,idLab, jam, tanggal, sks, namakegiatan, idilb,jammhs) values (?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,m.getNim());
            ps.setString(2,m.getNamamhs());
            ps.setString(3,m.getNopc());
            ps.setString(4,m.getIdLab());
            ps.setString(5,m.getJam());
            ps.setString(6,m.getTanggal());
            ps.setString(7,m.getSks());
            ps.setString(8,m.getNamakegiatan());
            ps.setString(9,m.getIdilb());
            ps.setString(10,m.getJammhs());
            status=ps.executeUpdate();
            con.close();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    public static int deletetransitlogbook(String nim){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("DELETE FROM transitlogbook WHERE nim=?");
            ps.setString(1,nim);
            status=ps.executeUpdate();
            con.close();
            
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    public static int deletelogbook(String idLab){
        int status = 0;
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("DELETE FROM membukalogbook WHERE idLab=?");
            ps.setString(1,idLab);
            status=ps.executeUpdate();
            con.close();
            
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    
    public static logbookgetsetter dapatkannomorpc(String id){
        logbookgetsetter e=new logbookgetsetter();
       // Membukalogbook t=new Membukalogbook();
        try{
            Connection con=SimpleDB.getConnection();
            PreparedStatement ps=con.prepareStatement("select nopc from transitlogbook where nopc=?");
            ps.setString(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
            e.setNim(rs.getString(1));
            e.setNamamhs(rs.getString(2));
            e.setNopc(rs.getString(3));
            e.setIdLab(rs.getString(4));
            e.setJam(rs.getString(5));
            e.setTanggal(rs.getString(6));
            e.setSks(rs.getString(7));
            e.setNamakegiatan(rs.getString(8));
            e.setIdilb(rs.getString(9));
            e.setJammhs(rs.getString(10));
            }
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return e;
    }

    public static List<Lab> tampilkirilab(){
            List<Lab> list=new ArrayList<Lab>();
            try{
                Connection con=SimpleDB.getConnection();
                PreparedStatement ps=con.prepareStatement("SELECT lab.idLab FROM lab LEFT JOIN membukalogbook ON lab.idLab = membukalogbook.idLab WHERE membukalogbook.idLab IS NULL");
                ResultSet rs=ps.executeQuery();
                while(rs.next()){
                    Lab e=new Lab();
                    e.setIdLab(rs.getString("idLab"));

                    list.add(e);
                    }
                con.close();
            }catch(Exception e){
                e.printStackTrace();
            }
            return list;
        }
    

    public static List<transitlogbook> tampilpcdigunakan(String idLab){
            List<transitlogbook> list=new ArrayList<transitlogbook>();
            try{
                Connection con=SimpleDB.getConnection();
                PreparedStatement ps=con.prepareStatement("SELECT nopc,jam,tanggal FROM transitlogbook WHERE idLab=? UNION DISTINCT SELECT nopc,jam,tanggal FROM logbookmhs WHERE idLab=?");
                ps.setString(1,idLab);
                ps.setString(2,idLab);
                ResultSet rs=ps.executeQuery();
                while(rs.next()){
                    transitlogbook e=new transitlogbook();
                    e.setNopcint(rs.getInt("nopc"));
                    e.setJam(rs.getString("jam"));
                    e.setTanggal(rs.getString("tanggal"));

                    list.add(e);
                    }
                con.close();
            }catch(Exception e){
                e.printStackTrace();
            }
            return list;
        }
    }

