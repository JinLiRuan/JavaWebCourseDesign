package bookstore.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**   
*    
* 项目名称：Javalab15   
* 类名称：DBHelper   
* 类描述：   
* 创建人：阮锦利
* 创建时间：2020年6月20日 上午11:09:55   
* 修改人：Ruan   
* 修改时间：2020年6月20日 上午11:09:55   
* 修改备注：   
* @version 1.0.0   
*    
*/ 
public class DBHelper implements DBConfig {

	private static Connection connection;
	private static Statement statement;
	private static ResultSet resultSet;
	
	public static Connection getConnection() {  //连接数据库
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url,userString,passwordString);
			if (connection != null) {
				System.out.println("数据库连接成功！！！");
			}
			return connection;
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static Statement openStatement() {   //创建statement对象
		try {
			statement = getConnection().createStatement();
			return statement;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static ResultSet executequery(String sql) {    //创建resultset，executequery对象，用于解析查询出来的结果集
		try {
			resultSet = openStatement().executeQuery(sql);
			return resultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static int executeupdate(String sql) {    //创建resultset，executeupdate对象，用于判断增删改影响的行数，判断是否操作成功！
		try {
			return openStatement().executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	public static void close() throws SQLException {   //最后关闭，释放资源
		if (resultSet !=null) {
			resultSet.close();
		}
		if (statement != null) {
			statement.close();
		}
		if (connection != null) {
			connection.close();
		}
	}
}
