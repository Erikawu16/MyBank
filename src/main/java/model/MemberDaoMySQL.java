package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDaoMySQL implements MemberDao {
	private Connection conn;
	
	public MemberDaoMySQL() {
		// 透過 JNDI 來查找資源
		try {
			InitialContext ctx = new InitialContext(); // 初始環境
			Context envContext = (Context)ctx.lookup("java:comp/env"); // 取得環境物件
			DataSource ds = (DataSource)envContext.lookup("jdbc/web"); // 透過環境物件取得指定資源
			
			conn = ds.getConnection(); // 取得資源連線
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/web?serverTimezone=Asia/Taipei";
			String username = "web";
			String password = "12345678";
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		*/
	}
	
	@Override
	protected void finalize() throws Throwable {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void create (Member member) {
		String sql = "insert into guestbook(name,phone ,personID ,mail,password,birthday,account ) values(?, ?, ?, ?,?,?);";
		try(PreparedStatement pstmt = conn.prepareStatement(sql)) {
			// 配置 sql ? 資料
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getPersonID());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getPassword());
			pstmt.setString(6, member.getBirthday());
			pstmt.setString(7, member.getAccount());
			pstmt.setDate(8, (java.sql.Date) member.getDate());
			// 提交送出
			int rowcount = pstmt.executeUpdate();
			System.out.println("rowcount(異動筆數) = " + rowcount);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Member> readAll() {
		String sql = "select name,phone ,personID ,mail,password,birthday,account date from mydb";
		List<Member> members = new ArrayList<>();
		try(Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql) ) {
			
			// 將 rs 的資料逐筆注入到 guestbook 物件中
			while (rs.next()) {
				Member member = new Member();
				
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				member.setPersonID(rs.getString("personID"));
				member.setEmail(rs.getString("Email"));
				member.setPassword(rs.getString("password"));
				member.setBirthday(rs.getString("birthday"));
				member.setName(rs.getString("account"));
				member.setDate(new Date(rs.getTimestamp("date").getTime()));
			
			
				// 加入到 guestbooks 集合中
				members.add(member);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return members;
	}



}