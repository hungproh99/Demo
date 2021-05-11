
package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBContext {
    protected Connection con;
    public DBContext()
    {
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://ndh4899.database.windows.net:1433;databaseName=Demo";
            String username = "ndh1234";
            String password = "Hunganh99";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url, username, password);
            System.out.println("ss");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
   public static void main(String[] args) {
       new DBContext();
   }
}