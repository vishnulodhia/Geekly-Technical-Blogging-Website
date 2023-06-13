/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.DB;

/**
 *
 * @author Dell
 */
import com.tech.blog.entities.user;
import java.sql.*;

public class userDB {

private Connection con;

    public userDB(Connection con) {
    this.con = con;
    }


    //insert user data to daya base
    
    public boolean saveuser(user u) throws SQLException{
        
        boolean f = false;
        
//        try{
            
            String query = "insert into user(name,email,password) values(?,?,?)";
            PreparedStatement pstmt =this.con.prepareStatement(query);
            pstmt.setString(1, u.getName());
            pstmt.setString(2, u.getEmail());
            pstmt.setString(3, u.getPassword());
            
            
            
            pstmt.executeUpdate();
            f = true;
//        }
        
//        catch(Exception e){
//            e.printStackTrace();
//        }
        
        return f;
    }
    
    
    public user getuserByMail(String email,String password){
        
        user User = null;
        
        try{
            String query = "select * from user where email = ? and password = ?";
            
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set =  pstmt.executeQuery();
            
            if(set.next()){
            User = new user();
            
            User.setId(set.getInt("id"));
            User.setName(set.getString("name"));
            User.setEmail(set.getString("email"));
            User.setPassword(set.getString("password"));
            User.setDatetime(set.getTimestamp("rdate"));
            User.setProfile(set.getString("profile"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return User;
        
    }

    
    
    public boolean updateuser( user u){
        boolean f = false;
        try{
            String query = "update user set name=?, email=?, password=? , profile=? where id=?";
            
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, u.getName());
            p.setString(2, u.getEmail());
            p.setString(3, u.getPassword());
            p.setString(4, u.getProfile());
            p.setInt(5, u.getId());
            
            
            p.executeUpdate();
            f=true;
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    
}
