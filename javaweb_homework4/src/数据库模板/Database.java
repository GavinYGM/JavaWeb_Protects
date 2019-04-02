package 数据库模板;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {

//	public static void main(String[] args) {
//		Connection connection=getConnection();
//		System.out.println(connection);
//	}
	public static Connection getConnection() {
		Connection conn=null;									//声明数据库连接对象
		String driverName="com.mysql.jdbc.Driver";		//驱动程序名
		String dtbs="idcard";									//数据库名称
		String name="root";									//用户名
		String psw="admin";									//密码
		String url1="jdbc:mysql://localhost:3306/"+dtbs;
		String url2="?user="+name+"&password="+psw;
		String url3="&useUnicode=true&characterEncoding=UTF-8";
		String url=url1+url2+url3;	
		if (conn==null) {
			try {
				Class.forName(driverName);
				conn=DriverManager.getConnection(url);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return conn;
	}
	public static void closeAll(Connection conn, PreparedStatement stmt, ResultSet rs) {
		// 若结果集对象不为空，则关闭
		if (rs != null) {
			try {
			rs.close();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
		// 若Statement对象不为空，则关闭
		if (stmt != null) {
			try {
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
		// 若数据连接对象不为空则关闭
		if (conn != null) {
			try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
	}
}
