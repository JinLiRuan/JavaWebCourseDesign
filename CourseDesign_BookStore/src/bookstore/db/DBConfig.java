package bookstore.db;



/**   
*    
* 项目名称：Javalab15   
* 类名称：DBConfig   
* 类描述：   
* 创建人：阮锦利
* 创建时间：2020年6月20日 上午9:50:51   
* 修改人：Ruan   
* 修改时间：2020年6月20日 上午9:50:51   
* 修改备注：   
* @version 1.0.0   
*    
*/ 
public interface DBConfig{     //用于加载数据库驱动和连接数据库信息

	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3308/javaweb?serverTimezone=UTC&useOldAliasMetadataBehavior=true";
	String userString = "root";
	String passwordString = "root";
	
	
}
