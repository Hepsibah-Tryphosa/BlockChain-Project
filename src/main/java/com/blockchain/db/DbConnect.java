
package com.blockchain.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sweety
 */
public class DbConnect {
    

    String databaseType;
    String serverIP;
    String serverPort;
    String database;
    String password;
    String user;

    /*
    This is deafult constructor 
    adhi manaki kanipivvadhu ga bava what is the need of writing it??
    
    buddy this is visble
    choodu ippudu edaina use chesthunnam aledha ni telusukovataniki 
    bava this is ok
    one is with parameters and another is default 
    tell me about getno and get
     */
    public DbConnect() {
        this.databaseType = "mysql";
        this.serverIP = "localhost";
        this.serverPort = "3306";
        this.database = "blockchain";
        this.password = "root";
        this.user = "root";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbConnect.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public DbConnect(String databaseType, String serverIP, String serverPort, String database, String password, String user) {
        this.databaseType = databaseType;
        this.serverIP = serverIP;
        this.serverPort = serverPort;
        this.database = database;
        this.password = password;
        this.user = user;

    }

    public String getDatabaseType() {
        return databaseType;
    }

    public void setDatabaseType(String databaseType) {
        this.databaseType = databaseType;
    }

    public String getServerIP() {
        return serverIP;
    }

    public void setServerIP(String serverIP) {
        this.serverIP = serverIP;
    }

    public String getServerPort() {
        return serverPort;
    }

    public void setServerPort(String serverPort) {
        this.serverPort = serverPort;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
//JDBC URL containes
    //jdbc:mysql//ip:port
    // this one doesnot
    //It is like this -- it resemebles just you have logged into the mysql havenot used any u<se database>
//With this there isno default database means you have to specify the databse explicitly
    //Remember the FIndUsages manam method ni ekkada ekkada vadamu ani telusthadhi
   // go oit
            
    public Connection getNoDbConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                "jdbc:" + getDatabaseType() + "://" + getServerIP() + ":" + getServerPort() + "/", getUser(),
                getPassword());
        return connection;
    }
//JDBC URL containes
    //jdbc:mysql//ip:port/dbname
    //ok this is the structure yes avnu
    //THis method accepts dbname in jdbc url
//
    public Connection getConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                "jdbc:" + getDatabaseType() + "://" + getServerIP() + ":" + getServerPort() + "/" + getDatabase() + "?",
                getUser(), getPassword());
        return connection;
    }

}

    
    
