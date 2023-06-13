/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.DB;

/**
 *
 * @author Dell
 */
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import com.tech.blog.entities.Category;
import com.tech.blog.entities.post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class PostDB {
    Connection con;

    public PostDB(Connection con) {
        this.con = con;
    }
    
    public ArrayList<Category> getCategory(){
        ArrayList<Category> list = new ArrayList<Category>();
        try{
            String q = "select * from Category";
            Statement st = con.createStatement();
            ResultSet set = st.executeQuery(q);
            while(set.next()){
            int cid = set.getInt("Cid");
            String name = set.getString("name");
            String description = set.getString("description");
            Category c = new Category(cid,name,description);
            list.add(c);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public boolean savepost(post p){
        boolean f = false;
        
        try{
            
            String q = "insert into post(pid,cid,ptitle,pcontent,pcode,ppic,userid) values(?,?,?,?,?,?,?)";
           PreparedStatement pstmt = con.prepareStatement(q);
           pstmt.setInt(1, p.getPid());
           pstmt.setInt(2, p.getCid());
           pstmt.setString(3, p.getPtitle());
           pstmt.setString(4, p.getPcontent());
           pstmt.setString(5, p.getPcode());
           
           if(p.getPpic().equals(""))
           pstmt.setString(6, "how-to-write-a-blog-post-760x406.jpeg");
           
           else
           pstmt.setString(6, p.getPpic());
           
           pstmt.setInt(7, p.getUserid());
           pstmt.executeUpdate();
           f= true;
            
            
        }
        catch(Exception e){
            e.printStackTrace();
        } 
        return f;
    }
    
    public String Namcat(int id){
        String re="";
        try{
        PreparedStatement pstmt = con.prepareStatement("select * from category where Cid=?");
        pstmt.setInt(1, id);
        ResultSet set = pstmt.executeQuery();   
        while(set.next())
        re = set.getString("name");
        
        
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return re;
    }
    
      public String discat(int id){
        String re="";
        try{
        PreparedStatement pstmt = con.prepareStatement("select * from category where Cid=?");
        pstmt.setInt(1, id);
        ResultSet set = pstmt.executeQuery();   
        while(set.next())
        re = set.getString("description");
        
        
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return re;
    }
    
    
    
    
    public List<post> getAllPsot(){
        List<post> list = new ArrayList<>();
        
        try{
              PreparedStatement pstmt = con.prepareStatement("select * from post order by pid desc");
            ResultSet set = pstmt.executeQuery();
            
            while(set.next()){
                int pid = set.getInt("pid");
                int cid = set.getInt("cid");
                String ptitle = set.getString("ptitle");
                String pcontent = set.getString("pcontent");
                String pcode = set.getString("pcode");
                String ppic = set.getString("ppic");
                Timestamp date = set.getTimestamp("pdate");
                int  userid = set.getInt("userid");
                post p = new post(pid, cid,ptitle,pcontent,ppic,date,pcode,userid);
                list.add(p);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<post> getPostBycid(int cid){
        List<post> list = new ArrayList<>();
        
        try{
            PreparedStatement pstmt = con.prepareStatement("select * from post where cid=?");
            pstmt.setInt(1, cid);
            ResultSet set = pstmt.executeQuery();
            
                while(set.next()){
                int pid = set.getInt("pid");
                int Cid = set.getInt("cid");
                String ptitle = set.getString("ptitle");
                String pcontent = set.getString("pcontent");
                String pcode = set.getString("pcode");
                String ppic = set.getString("ppic");
                Timestamp date = set.getTimestamp("pdate");
                int  userid = set.getInt("userid");
                post p = new post(pid, cid,ptitle,pcontent,ppic,date,pcode,userid);
                list.add(p);
            }
            
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public post getpostbypostId(int postid){
        post p = null;
        try{
        String q = "select * from post where pid = ?";
        PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setInt(1, postid);
            ResultSet set = pstmt.executeQuery();
            
            if(set.next()){
                 int pid = set.getInt("pid");
                int Cid = set.getInt("cid");
                String ptitle = set.getString("ptitle");
                String pcontent = set.getString("pcontent");
                String pcode = set.getString("pcode");
                String ppic = set.getString("ppic");
                Timestamp date = set.getTimestamp("pdate");
                int  userid = set.getInt("userid");
                 p = new post(pid, Cid,ptitle,pcontent,ppic,date,pcode,userid);
            }
            
        
        }
        catch(Exception e){
            
            e.printStackTrace();
        }
        return p;
    }
    
     public List<post> getPostByuid(int uid){
        List<post> list = new ArrayList<>();
        
        try{
            PreparedStatement pstmt = con.prepareStatement("select * from post where userid=?");
            pstmt.setInt(1, uid);
            ResultSet set = pstmt.executeQuery();
            
                while(set.next()){
                int pid = set.getInt("pid");
                int Cid = set.getInt("cid");
                String ptitle = set.getString("ptitle");
                String pcontent = set.getString("pcontent");
                String pcode = set.getString("pcode");
                String ppic = set.getString("ppic");
                Timestamp date = set.getTimestamp("pdate");
                int  userid = set.getInt("userid");
                post p = new post(pid, Cid,ptitle,pcontent,ppic,date,pcode,userid);
                list.add(p);
            }
            
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    
          public void deletepost(int pid){
        
              try{
            PreparedStatement pstmt = con.prepareStatement("delete from post where pid=?");
            pstmt.setInt(1, pid);
            int row  =   pstmt.executeUpdate();    
        }
        catch(Exception e){
            e.printStackTrace();
        }
              
              
             }
          
    
    
    
}
