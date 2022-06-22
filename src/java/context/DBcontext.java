/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Minh Hieu
 */
public class DBcontext {
        private final String serverName = "DESKTOP-FS2IFVK";
    private final String dbName = "HienMau1";
    private final String portNumber = "1433";
    private final String user = "Hieu";
    private final String pass = "sa";
    
   
    public Connection getConnection() throws Exception{
        
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String connectionUrl = "jdbc:sqlserver://"+serverName+":"+portNumber+";" +
            "databaseName="+dbName+";user="+user+";password="+pass+";";
        return DriverManager.getConnection(connectionUrl);
    }
}
