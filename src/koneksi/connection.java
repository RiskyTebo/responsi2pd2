/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

// import package for mysql connection
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author confus1on
 */
public class connection {
    public Connection conn;
    
    public Connection connect()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver ditemukan");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver tidak ditemukan " + e);
        }
        
        String path = "jdbc:mysql://localhost:8889/pencatatan_ta";
        try {
            conn = DriverManager.getConnection(path, "root", "root");
            System.out.println("Terhubung ke database");
        } catch (Exception e) {
            System.out.println("Tidak terhubung kedatabase " + e);
        }
        return conn;
    }
}
