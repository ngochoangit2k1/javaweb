/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cn.techtutorial.connection;

 import java.sql.Connection;
 import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Lenovo
 */
 public class ConnectDB implements DatabaseInfor{
 private static ConnectDB instance;
	private static Connection connection = null;
 public ConnectDB() {
 }

 public Connection openConnection() throws Exception {
 Class.forName(driverName);
 Connection con = DriverManager.getConnection(url, user, pass);
 return con;

 }
 public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName(driverName);
            connection=DriverManager.getConnection(url, user, pass);
            System.out.print("connected");
        }
        return connection;
 }
 //Get instance of dbms only one time

 public static ConnectDB getInstance() {
 if (instance == null) {
 instance = new ConnectDB();
 }
 return instance;
 }
 
 public static void closeConnection(Connection connection) throws SQLException {
        if (connection != null) {
            connection.close();
        }
    }
 }
