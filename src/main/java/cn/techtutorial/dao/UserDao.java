package cn.techtutorial.dao;

import cn.techtutorial.connection.ConnectDB;

import java.sql.*;
import cn.techtutorial.model.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDao {

    private Connection con;

    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public UserDao() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    

    public List<User> getUser() {
        List<User> sl = new ArrayList<>();
        ConnectDB db = ConnectDB.getInstance();
        String sql = "Select * from users";
        try {
            Connection con = db.openConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                User user = new User(id, name, email, password);
                sl.add(user);
            }
            rs.close();
            statement.close();
            con.close();
        } catch (Exception ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE,
                    null, ex);
        }
        return sl;
    }

    public UserDao(Connection con) {
        this.con = con;

    }

    public User userLogin(String email, String password) {
        User user = null;

        ConnectDB db = ConnectDB.getInstance();

        try {

            query = "select * from users where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
      public boolean registerUser(User user) {
        ConnectDB db = ConnectDB.getInstance();
        String sql = "INSERT INTO Main(name, email, password)\n"
                    + "VALUES(?,?,?,?,?);";

        Connection con = null;
        try {
            con = db.getConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(2, user.getName());
        
            statement.setString(3, user.getEmail());
          
            statement.setString(4, user.getPassword());
            int rs = statement.executeUpdate();
            if (rs==1) {
                System.out.println("Success");
                return true;
            }

        } catch (Exception ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                ConnectDB.closeConnection(con);
            } catch (SQLException ex) {
                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }
}
