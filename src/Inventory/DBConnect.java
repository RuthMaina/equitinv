/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Ruth
 */
public class DBConnect {
    static PreparedStatement ps;
    static ResultSet rs;
     private static Connection con = null;
    
        public static Connection connect(){
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
              con = DriverManager.getConnection("jdbc:mysql://localhost:3306/einventory", "root", "");
              return con;
            }catch(ClassNotFoundException | SQLException | IllegalAccessException | InstantiationException classNotFoundException){
                return null;
            }
        }
       public void closeDatabase(){
           if (con != null){
               try{
                    con.close();
               }catch(SQLException sqleex){
               
               }catch (Exception ex){
                   //you can log some custome messages using the getMessage() method.
               }
           }
       }
}
