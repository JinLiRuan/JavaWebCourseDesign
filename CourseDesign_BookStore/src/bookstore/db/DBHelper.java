package bookstore.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**   
*    
* ��Ŀ���ƣ�Javalab15   
* �����ƣ�DBHelper   
* ��������   
* �����ˣ������
* ����ʱ�䣺2020��6��20�� ����11:09:55   
* �޸��ˣ�Ruan   
* �޸�ʱ�䣺2020��6��20�� ����11:09:55   
* �޸ı�ע��   
* @version 1.0.0   
*    
*/ 
public class DBHelper implements DBConfig {

	private static Connection connection;
	private static Statement statement;
	private static ResultSet resultSet;
	
	public static Connection getConnection() {  //�������ݿ�
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url,userString,passwordString);
			if (connection != null) {
				System.out.println("���ݿ����ӳɹ�������");
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
	public static Statement openStatement() {   //����statement����
		try {
			statement = getConnection().createStatement();
			return statement;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static ResultSet executequery(String sql) {    //����resultset��executequery�������ڽ�����ѯ�����Ľ����
		try {
			resultSet = openStatement().executeQuery(sql);
			return resultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static int executeupdate(String sql) {    //����resultset��executeupdate���������ж���ɾ��Ӱ����������ж��Ƿ�����ɹ���
		try {
			return openStatement().executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	public static void close() throws SQLException {   //���رգ��ͷ���Դ
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
