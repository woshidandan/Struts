package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import biz.Users;

public class DbService {
	public void addUser(Users user) {
		Connection connection = DbConnection.getConnection();
		PreparedStatement ps = null;
		String sql = "insert into users (username,password,sex,email) values(?,?,?,?)";
		
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setInt(3, user.getSex());
			ps.setString(4, user.getEmail());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public Users hasUser(String username, String password) {
		Users user = new Users();
		Connection connection = DbConnection.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from users where username=? and password=?";
		
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next()) {
				user.setPassword(rs.getString("password"));
				user.setUsername(rs.getString("username"));
				user.setSex(rs.getInt("sex"));
				user.setEmail(rs.getString("email"));
				user.setUserid(rs.getInt("user_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbConnection.closeConnection(rs, ps, connection);
		}
		
		return user;
	}
	
	public boolean hasSameName(String username) {
		String name = null;
		Connection connection = DbConnection.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from users where username=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			if(rs.next()) {
				name = rs.getString("username");
				if(name.equals(username)) {
					return true;
				} else {
					return false;
				}
			}
			else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbConnection.closeConnection(rs, ps, connection);
		}
		return false;
	}
}
