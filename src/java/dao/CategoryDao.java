package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.DBContext;
import model.Category;

public class CategoryDao extends DBContext{

	
	public void insert(Category category) {
		String sql = "INSERT INTO category(cate_name) VALUES (?)";
		

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	public void edit(Category category) {
		String sql = "UPDATE category SET cate_name = ? WHERE cate_id = ?";
		

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.setInt(2, category.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	public void delete(int id) {
		String sql = "DELETE FROM category WHERE cate_id = ?";
		

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	public Category get(int id) {
		String sql = "SELECT * FROM category WHERE cate_id = ? ";
		

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = new Category();

				category.setId(rs.getInt("cate_id"));
				category.setName(rs.getString("cate_name"));

				return category;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	
	public List<Category> getAll() {
		List<Category> categories = new ArrayList<Category>();
		String sql = "SELECT * FROM Category";
		

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = new Category();

				category.setId(rs.getInt("cate_id"));
				category.setName(rs.getString("cate_name"));

				categories.add(category);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return categories;
	}

	
	public List<Category> search(String keyword) {
		List<Category> categories = new ArrayList<Category>();
		String sql = "SELECT * FROM category WHERE name LIKE ? ";
		

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = new Category();

				category.setId(rs.getInt("id"));
				category.setName(rs.getString("name"));

				categories.add(category);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return categories;
	}

	
	public Category get(String name) {
		String sql = "SELECT * FROM Category WHERE cate_name = ? ";
		

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = new Category();

				category.setId(rs.getInt("cate_id"));
				category.setName(rs.getString("cate_name"));

				return category;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
