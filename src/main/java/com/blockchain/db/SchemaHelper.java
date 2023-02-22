package com.blockchain.db;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sweety
 */
public class SchemaHelper {

    DbConnect dbConnect;

    public SchemaHelper() {
        dbConnect = new DbConnect();
    }

    public void createStructure() {
        createDatabase();
        createTables();
    }

    public void createDatabase() {
        try ( Connection conn = dbConnect.getNoDbConnection()) {
            Statement cst = conn.createStatement();
            String sql = "create database if not exists " + dbConnect.getDatabase();
            cst.execute(sql);
        } catch (SQLException ex) {
            Logger.getLogger(SchemaHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void createTables() {
        try ( Connection conn = dbConnect.getConnection()) {
            Statement cst = conn.createStatement();

            cst.execute(getTableStructure(TableName.user_details));
            cst.execute(getTableStructure(TableName.user_files));

        } catch (SQLException ex) {
            Logger.getLogger(SchemaHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getTableStructure(String tableName) {
        String tbl;
//        switch (tableName) {
//
//            default:
//            case TableName.user_details:
//                tbl = "create table if not exists " + TableName.user_details + " ("
//                   "s.no int(10) unsigned NOT NULL AUTO_INCREMENT,"     
//                  +    "name varchar(30),"
//                         + "loginid varchar(30),"
//                
//                         + "  email VARCHAR(100) NOT NULL ,"
//                       
//                     
//                        + "  password VARCHAR(20),"
//                        + "  contact no VARCHAR(10),"
//                       
//                        + "  user  type VARCHAR(45),"
//                       
//                        + "  PRIMARY KEY(email)"
//                        + ");";
//
//                break;
//
//            case TableName.user_files:
//                tbl = "create table if not exists  " + TableName.user_files + " ("
//                        + "s.no int(10) unsigned NOT NULL AUTO_INCREMENT,"
//                        + "filename varchar(500) NOT NULL DEFAULT '',"
//                        + "filetype longblob,"
//                         + "fileowner varchar(100) NOT NULL DEFAULT '',"
//                        + "filekey varchar(255) NOT NULL DEFAULT '',"
//                       
//                 + "PRIMARY KEY (fileid) );";
//
//                break;
//        }
//     return tbl;
        return "";
    }

}
