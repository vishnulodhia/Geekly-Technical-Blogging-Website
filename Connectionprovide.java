/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.helper;
import java.sql.*;

/**
 *
 * @author Dell
 */
public class Connectionprovide {
    
   private static Connection con =null;
   
   public static Connection getCoonection(){
       
       try{
          
         
           
//           if(con == null){
               System.out.println("Hii");
           Class.forName("com.mysql.cj.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","windows@8");      
//           }
          
           
           
       }
       catch(Exception e){
           e.printStackTrace();
       }
           
       
       return con;
   }
    
  
    
    
    
}
