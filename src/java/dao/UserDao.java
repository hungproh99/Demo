package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.DBContext;
import model.User;

public class UserDao extends DBContext{

    
    public void insert(User user) {
        int roleId = 0;
        String sql = "INSERT INTO [User](username, password, role_id) VALUES (?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            try {
                if (user.getRoleId() == 1) {
                    roleId = 1;
                } else {
                    roleId = 2;
                }

            } catch (Exception e) {
                roleId = 2;
            }
            ps.setInt(3, roleId);
            ps.executeUpdate();
            System.out.println("iss");
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    
    public void edit(User user) {
        String sql = "UPDATE [User] SET username = ?, password = ?, role_id = ? WHERE id = ?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setInt(3, user.getRoleId());
            ps.setInt(4, user.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    
    public User get(String username) {
        String sql = "SELECT * FROM [User] WHERE username = ? ";
        

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRoleId(Integer.parseInt(rs.getString("role_id")));

                return user;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    
    public User get(int id) {
        String sql = "SELECT * FROM [User] WHERE id = ? ";
        

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRoleId(Integer.parseInt(rs.getString("role_id")));

                return user;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    
    public List<User> getAll() {
        List<User> userList = new ArrayList<User>();
        String sql = "SELECT * FROM [User]";
        

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRoleId(Integer.parseInt(rs.getString("role_id")));

                userList.add(user);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return userList;
    }

    
    public List<User> search(String keyword) {
        List<User> userList = new ArrayList<User>();
        String sql = "SELECT * FROM [User] WHERE name LIKE ? ";
        

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRoleId(Integer.parseInt(rs.getString("role_id")));

                userList.add(user);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return userList;
    }

    
    public boolean checkExistUsername(String username) {
        boolean duplicate = false;
        try {
            String query = "select * from [User] where username = ?";

            PreparedStatement psmt = con.prepareStatement(query);

            psmt.setString(1, username);

            ResultSet resultSet = psmt.executeQuery();

            if (resultSet.next()) {
                duplicate = true;
            }
            psmt.close();
        } catch (SQLException ex) {
        }
        return duplicate;
    }

}
