/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Model.Account;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BuiDuy
 */
public class DataProcess {
    public Connection getConnection()
    {
        Connection conn=null;        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user="sa";
            String pass="123456";
            String url="jdbc:sqlserver://127.0.0.1:1433;databaseName=WSHOP";
            try {
                conn=DriverManager.getConnection(url, user, pass);
            } catch (SQLException ex) {
                Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }   
    public boolean checkLogin(Account acc)
    {
        boolean f=false;
        String sql="SELECT * FROM wAccount WHERE user=? and pass=?";
        //String sql1="SELECT * FROM tblAccount WHERE _user='"+acc.getUser()+"' and _pass='"+acc.getPass()+"'";
        try {
            PreparedStatement prst=getConnection().prepareStatement(sql);
            prst.setString(1, acc.getUser());
            prst.setString(2, acc.getPass());
            ResultSet rs=prst.executeQuery();
            while(rs.next())
            {
                f=rs.next();
                acc.setType(5);
            }
            rs.close();
            prst.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }
}
