///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package cn.techtutorial.servlet;
//
//import cn.techtutorial.connection.ConnectDB;
//import cn.techtutorial.dao.UserDao;
//import cn.techtutorial.model.User;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
///**
// *
// * @author Lenovo
// */
//class userDao {
//     public boolean registerUser(User user) {
//        ConnectDB db = ConnectDB.getInstance();
//        String sql = "INSERT INTO Main(name, email, password)\n"
//                    + "VALUES(?,?,?,?,?);";
//
//        Connection con = null;
//        try {
//            con = db.getConnection();
//            PreparedStatement statement = con.prepareStatement(sql);
//            statement.setString(2, user.getName());
//        
//            statement.setString(3, user.getEmail());
//          
//            statement.setString(4, user.getPassword());
//            int rs = statement.executeUpdate();
//            if (rs==1) {
//                System.out.println("Success");
//                return true;
//            }
//
//        } catch (Exception ex) {
//            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            try {
//                ConnectDB.closeConnection(con);
//            } catch (SQLException ex) {
//                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//        return false;
//    }
//}
