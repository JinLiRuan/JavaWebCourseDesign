package bookstore.dao;

import bookstore.bean.UserBean;

public interface IFUserDao {

	public int insertUser(UserBean user);    //增加数据对象，对应数据库student.user表的一行
	public int deleteUser(UserBean user);    //删除数据对象，对应数据库student.user表的一行
	public int updateUser(UserBean user);    //修改数据对象，对应数据库student.user表的一行的某些字段
	public UserBean selectUser(String userString);            //查找数据对象
	
}
