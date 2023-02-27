/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blockchain.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Sweety
 */
public class DbConnection {
    

    private static Connection con = null;
    
   public static Connection getConnection(){
       try {
           DriverManager.registerDriver(new com.mysql.jdbc.Driver());
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/block_chain","root","root");
           if(con!=null){
           return con;
           }else{
           return null;
           }
       } catch (Exception e) {
           System.out.println("Error at DBConnection "+e.getMessage());
       }
       return con;
   }
}
