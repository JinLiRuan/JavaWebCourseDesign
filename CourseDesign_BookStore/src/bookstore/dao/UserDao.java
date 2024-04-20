package bookstore.dao;

import bookstore.dao.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import bookstore.db.DBHelper;
import bookstore.*;
import bookstore.bean.UserBean;

public class UserDao implements IFUserDao {
	
	public int insertUser(UserBean user) {
		Connection Connection = DBHelper.getConnection();
		int num = 0;
		if (Connection!=null) {
		String sql = "insert into user(username,password,gender,phone,address) values(?,?,?,?,?)";
			try {
				PreparedStatement prepare = Connection.prepareStatement(sql);
				prepare.setString(1, user.getUsername());
				prepare.setString(2, user.getPassword());
				prepare.setString(3, user.getGender());
				prepare.setString(4, user.getPhone());
				prepare.setString(5, user.getAddress());
				num = prepare.executeUpdate();
				DBHelper.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			System.out.println("连接数据库失败！！！");
		}if (num==0) {
			System.out.println("数据插入失败！！！");
		}else {
			System.out.println("数据成功插入数据库！！！");
		}
		return num;
	}

	public int deleteUser(UserBean user) {
		Connection Connection = DBHelper.getConnection();
		int num = 0;
		if (Connection!=null) {
		String sql = "delete from user where username = ?";
			try {
				PreparedStatement prepare = Connection.prepareStatement(sql);
				prepare.setString(1, user.getUsername());
				num = prepare.executeUpdate();
				DBHelper.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			System.out.println("连接数据库失败！！！");
		}if (num==0) {
			System.out.println("数据删除失败！！！");
		}else {
			System.out.println("数据成功删除！！！");
		}
		return num;
	}


	public int updateUser(UserBean user) {
		Connection Connection = DBHelper.getConnection();
		int num = 0;
		if (Connection!=null) {
		String sql = "update user set password=?,gender=?,phone=?,address=? where username=?";
			try {
				PreparedStatement prepare = Connection.prepareStatement(sql);
				prepare.setString(1, user.getPassword());
				prepare.setString(2, user.getGender());
				prepare.setString(3, user.getPhone());
				prepare.setString(4, user.getAddress());
				prepare.setString(5, user.getUsername());
				num = prepare.executeUpdate();
				DBHelper.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			System.out.println("连接数据库失败！！！");
		}if (num==0) {
			System.out.println("数据更新失败！！！");
		}else {
			System.out.println("数据更新删除！！！");
		}
		return num;
	}

	public UserBean selectUser(String id) {
		Connection Connection = DBHelper.getConnection();
		UserBean user= null;
		if (Connection!=null) {
		String sql = "select * from user where username=?";
			try {
				PreparedStatement prepare = Connection.prepareStatement(sql);
				prepare.setString(1, id);
				ResultSet resultSet = prepare.executeQuery();
				user = new UserBean();
				while (resultSet.next()) {
					user.setUsername(resultSet.getString(1));
					user.setPassword(resultSet.getString(2));
					user.setSex(resultSet.getString(3));
					user.setPhone(resultSet.getString(4));
					user.setAddress(resultSet.getString(5));
				}
				DBHelper.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			System.out.println("连接数据库失败！！！");
		}
		
		return user;
	}


	


}
