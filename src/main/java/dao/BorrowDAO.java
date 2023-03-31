//package dao;
//
//import java.net.URI;
//import java.net.URISyntaxException;
//import java.security.Timestamp;
//import java.sql.Connection;
//import java.sql.Date;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//import dto.Borrow;
//
//	public class BorrowDAO {
//		private static Connection getConnection() throws URISyntaxException, SQLException {
//			try {
//				Class.forName("org.postgresql.Driver");
//			} catch (ClassNotFoundException e) {
//				e.printStackTrace();
//			}
//		    URI dbUri = new URI(System.getenv("DATABASE_URL"));
//
//		    String username = dbUri.getUserInfo().split(":")[0];
//		    String password = dbUri.getUserInfo().split(":")[1];
//		    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
//
//		    return DriverManager.getConnection(dbUrl, username, password);
//		}
//
//  // borrowテーブルに新しいレコードを追加するメソッド
//		public static int borrowbook(Borrow borrow) { 
//		String sql = "INSERT INTO borrow (book_id, general_id, borrow_datetime, limit_date) VALUES (?, ?, ?, ?)";
//			int result = 0;
//			
//    try (Connection con = getConnection();
//         PreparedStatement pstmt = con.prepareStatement(sql); 
//    		){
//      pstmt.setInt(1, borrow.getBookId());
//      pstmt.setInt(2, borrow.getGeneralId());
//      pstmt.setTimestamp(3, Timestamp.valueOf(borrow.getBorrowDatetime()));
//      pstmt.setDate(4, Date.valueOf(borrow.getLimitDate()));
//      pstmt.setTimestamp(5, Timestamp.valueOf(borrow.getReturnDatetime()));
//      result = pstmt.executeUpdate();
//    } catch (SQLException e) {
//		e.printStackTrace();
//	} catch (URISyntaxException e) {
//		e.printStackTrace();
//    } finally {
//		System.out.println(result + "件更新しました。");
//	}
//    return result;
//  }

//  // borrowテーブルのレコードを更新するメソッド
//  public void updateBorrowRecord(int borrowId, Timestamp returnDatetime) {
//    try (Connection con = DriverManager.getConnection(url, user, password);
//         PreparedStatement pst = con.prepareStatement("UPDATE borrow SET return_datetime = ? WHERE id = ?")) {
//      pst.setTimestamp(1, returnDatetime);
//      pst.setInt(2, borrowId);
//      pst.executeUpdate();
//    } catch (SQLException e) {
//      e.printStackTrace();
//    }
//  }
//
//  // userが現在借りている全ての本を取得するメソッド
//  public List<String> getCurrentBorrowingBooks(int userId) {
//    List<String> books = new ArrayList<>();
//    try (Connection con = DriverManager.getConnection(url, user, password);
//         PreparedStatement pst = con.prepareStatement("SELECT title FROM book WHERE id IN (SELECT book_id FROM borrow WHERE user_id = ? AND return_datetime IS NULL)")) {
//      pst.setInt(1, userId);
//      ResultSet rs = pst.executeQuery();
//      while (rs.next()) {
//        books.add(rs.getString("title"));
//      }
//    } catch (SQLException e) {
//      e.printStackTrace();
//    }
//    return books;
//  }
//}

