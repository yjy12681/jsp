package com.coding404.board.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	//싱글톤 형태의 클래스로 생성하는 편이 좋습니다.
		//1.나자신의 객체를 스태틱으로 선언
		private static BoardDAO instance = new BoardDAO();	
		//2.직접 생성하지 못하도록 생성자 제한	
		private BoardDAO() {	//기본생성자 , 드라이버 호출도 같이

			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			}

		}
		//3.getter를 통해서 객체를 반환
		public static BoardDAO getInstance() {
			return instance;
		}
		
		//DB연결작업
		//데이터베이스 연결 주소
		private String url = "jdbc:oracle:thin:@localhost:1521:xe";
		private String uid = "JSP";
		private String upw = "JSP";
		
		//글 등록
		public void regist(String writer, String title, String content) {
			String sql = "INSERT INTO BOARD(BNO, WRITER, TITLE, CONTENT) VALUES(BOARD_SEQ.NEXTVAL,?,?,?)";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = DriverManager.getConnection(url,uid,upw);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, writer);
				pstmt.setString(2, title);
				pstmt.setString(3, content);
				
				pstmt.executeUpdate();
				
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
		

		//목록을 조회
		
		public List<BoardVO> getList(){
			List<BoardVO> list = new ArrayList<>();
			
			String sql = "SELECT * FROM BOARD ORDER BY BNO DESC";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DriverManager.getConnection(url,uid,upw);
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()) {
					int bno =rs.getInt("BNO");
					String writer =rs.getString("WRITER");
					String title = rs.getString("TITLE");
					String content = rs.getString("CONTENT");
					int hit =rs.getInt("HIT");
					Timestamp regdate = rs.getTimestamp("REGDATE");
					BoardVO vo = new BoardVO(bno,writer,title,content,hit,regdate);
					list.add(vo);
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
			
			
			return list;
		}
		
		public BoardVO getContent(String bno) {
			BoardVO vo = null;
			String sql = "SELECT * FROM BOARD WHERE BNO = ?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DriverManager.getConnection(url,uid,upw);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bno);
				
				rs= pstmt.executeQuery();
				
				if(rs.next()) {
					int bno1 = rs.getInt("BNO");
					String writer =rs.getString("WRITER");
					String title =rs.getString("TITLE");
					String content = rs.getString("CONTENT");
					int hit = rs.getInt("HIT");
					Timestamp regdate = rs.getTimestamp("REGDATE");
					
					vo = new BoardVO(bno1,writer,title,content,hit,regdate);
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
		
		
		public void update(String bno, String title, String content) {
			String sql = "UPDATE BOARD SET TITLE = ? , CONTENT = ? WHERE BNO = ?";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = DriverManager.getConnection(url,uid,upw);
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, title);
				pstmt.setString(2, content);
				pstmt.setString(3, bno);
				
				pstmt.executeUpdate();
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
}
