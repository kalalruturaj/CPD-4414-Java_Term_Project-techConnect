/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List; 

/**
 *
 * @author Ruturaj
 */

public class LookupController {
    
    private List<Lookup> list = new ArrayList();

    public LookupController() {
        
         try {
             

            Connection conn = Utils.getConnection();
            String str = "SELECT * FROM price";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(str);
            while(rs.next()){
                
                Lookup look = new Lookup();
                look.setId(rs.getInt("id"));
                look.setRooms(rs.getInt("rooms"));
                look.setDescription(rs.getString("description"));
                look.setPrice(rs.getInt("price"));
                
                list.add(look);
                
            }
        } catch (SQLException ex) {
             System.out.println(ex);
        }
    }
    
    
    public List<Lookup> getAll() {
        // TODO: Return the entire List of Catalog items
        
        return list;
    }
}
