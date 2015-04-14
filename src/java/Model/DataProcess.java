/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Model.Account;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BuiDuy
 */
public class DataProcess {
    private static final DataProcess instance = new DataProcess();
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
    public static void main(String[] args) throws SQLException {
    }
    
     public static DataProcess getInstance() {
        return instance;
    }
    public boolean checkLogin(Account acc)
    {
        boolean f=false;
        String sql="SELECT * FROM wAccount WHERE [user]=? and pass=?";
        try {
            PreparedStatement prst= getConnection().prepareStatement(sql);
            prst.setString(1, acc.getUser());
            prst.setString(2, acc.getPass());
            ResultSet rs=prst.executeQuery();
            while(rs.next())
            {
                acc.setType(rs.getInt(3));
                f = true;
            }
            rs.close();
            prst.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }
    public List<Product> getAllProduct() {
        List<Product> products = new ArrayList<>();
        String query = "Select * from wProduct";
        try {
            PreparedStatement ps = getConnection().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getFloat(4)));
            }
            rs.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
}
