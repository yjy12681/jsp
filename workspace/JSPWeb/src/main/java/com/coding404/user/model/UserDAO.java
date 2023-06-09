package com.coding404.user.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.apache.catalina.connector.Connector;



public class UserDAO {
	
	//싱글톤 형태의 클래스로 생성하는 편이 좋습니다.
	//1.나자신의 객체를 스태틱으로 선언
	private static UserDAO instance = new UserDAO();	
	//2.직접 생성하지 못하도록 생성자 제한	
	private UserDAO() {	//기본생성자 , 드라이버 호출도 같이

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}

	}
	//3.getter를 통해서 객체를 반환
	public static UserDAO getInstance() {
		return instance;
	}
	
	//DB연결작업
	//데이터베이스 연결 주소
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "JSP";
	private String upw = "JSP";
	
	/*
	 * @author 20230608 홍길동 중복검사
	 * */
	
	public int idCheck(String id) { //아이디 중복체크
		int result = 1;			
		String sql = "SELECT * FROM USERS WHERE ID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			//1.Connector -디비연결
			conn =DriverManager.getConnection(url,uid,upw);
			//2. Pstmt - sql을 실행하기 위한 클래스
			pstmt =  conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//3. ResultSet
			rs = pstmt.executeQuery();
			
			if(rs.next()) {//중복 o
				result = 1;				
			}else {//중복 x
				result = 0;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		
		
		return result;
	}

	//회원가입
	public void join(UserVO vo) {//회원가입 한 정보 저장
		String sql = "INSERT INTO USERS(ID,PW,NAME,EMAIL,GENDER) VALUES(?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(sql);
						
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getGender());
			
			pstmt.executeUpdate(); //성공시 1 ,실패 0
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
	}

	//로그인
	public UserVO login(String id, String pw) {
		//로그인 성공하면 객체가 반환, 로그인 실패하면 null값이 반환
		UserVO vo = null;
		
		String sql = "SELECT * FROM USERS WHERE ID = ? AND PW = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DriverManager.getConnection(url,upw,uid);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String id2 =rs.getString("ID");
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String gender = rs.getString("GENDER");
				Timestamp regdate = rs.getTimestamp("REGDATE");
				
				vo = new UserVO(id2,null,name,email,gender,regdate);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		return vo;
	}

	public UserVO getInfo(String id) {
		UserVO vo = null;
		
		String sql = "SELECT * FROM USERS WHERE ID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String id2 = rs.getString("ID");
				
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String gender = rs.getString("GENDER");
				
				vo = new UserVO(id2,null,name,email,gender,null);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		
				
		return vo;
	}

	public int updateInfo(UserVO vo) {
		int result = 0;
		String sql = "UPDATE USERS SET PW =?,NAME = ?,EMAIL = ? , GENDER = ? WHERE ID = ? ";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getPw());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getId());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int deleteInfo(UserVO vo) {
		int result = 0;
		String sql = "DELETE FROM USERS WHERE ID = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getId());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		return result;
	}
}
