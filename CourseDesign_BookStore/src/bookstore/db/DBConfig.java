package bookstore.db;



/**   
*    
* ��Ŀ���ƣ�Javalab15   
* �����ƣ�DBConfig   
* ��������   
* �����ˣ������
* ����ʱ�䣺2020��6��20�� ����9:50:51   
* �޸��ˣ�Ruan   
* �޸�ʱ�䣺2020��6��20�� ����9:50:51   
* �޸ı�ע��   
* @version 1.0.0   
*    
*/ 
public interface DBConfig{     //���ڼ������ݿ��������������ݿ���Ϣ

	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3308/javaweb?serverTimezone=UTC&useOldAliasMetadataBehavior=true";
	String userString = "root";
	String passwordString = "root";
	
	
}
