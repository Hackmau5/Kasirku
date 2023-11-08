//Koneksi ke database
package model;
import java.sql.*;
public class koneksi {
    //Declare
    private static Connection koneksi;
    //Koneksinya
    public static Connection getConnection() throws Exception {
        try {
            String dbURL = "jdbc:sqlserver://localhost;database=Kasirku;user=admin;password=qwertyx27*";
            koneksi = DriverManager.getConnection(dbURL);
        } catch (Exception se) {
            System.out.println("Error: "+se.getMessage());
        }
        return koneksi;
    }
}
