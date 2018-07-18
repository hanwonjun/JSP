package shop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.io.File;

public class ShopMgr {

	private DBConnectionMgr pool;

	public ShopMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	// ī�װ� ����Ʈ
	public Vector<CategoryBean> getCategoryList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CategoryBean> vlist = new Vector<CategoryBean>();
		try {
			con = pool.getConnection();
			sql = "select * from category ";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CategoryBean bean = new CategoryBean();
				bean.setCateg(rs.getString(1));
				vlist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	
	// �Խ��� �Է�
		public void insertBook(HttpServletRequest req) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			MultipartRequest multi = null;
			String filename = null;
			
			//���̺� ���� 
			String  SAVEFOLDER = "C:\\Users\\seoil\\Desktop\\2018.05.15\\web3\\WebContent\\img\\book";
			String ENCTYPE = "euc-kr";
			int MAXSIZE = 5*1024*1024;
			
			try {
				con = pool.getConnection();
				
				File file = new File(SAVEFOLDER);
				if (!file.exists())
					file.mkdirs();
				multi = new MultipartRequest(req, SAVEFOLDER,MAXSIZE, ENCTYPE,
						new DefaultFileRenamePolicy());

				if (multi.getFilesystemName("img") != null) {
					filename = multi.getFilesystemName("img");
				}
				
				sql = "insert into book values (?, ?, ?, ?, ?, ?, ?, ?, sysdate(), ?, ?, ?)";

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("isbn"));
				pstmt.setString(2, multi.getParameter("title"));
				pstmt.setString(3, multi.getParameter("author"));
				pstmt.setString(4, multi.getParameter("publisher"));
				Date date =  java.sql.Date.valueOf(multi.getParameter("pubdate"));
				pstmt.setDate(5, date);
				pstmt.setInt(6,  Integer.valueOf(multi.getParameter("price")));
				pstmt.setString(7,  multi.getParameter("category"));
				pstmt.setInt(8, Integer.valueOf(multi.getParameter("remaining")));
				pstmt.setString(9, multi.getParameter("mdchoice"));
				pstmt.setString(10,  filename);
				pstmt.setString(11,  multi.getParameter("description"));
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
		}
		
		
		//PL �Խù� �� ����
		public int getTotalCount(String category, String keyField, String keyWord) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			int totalCount = 0;
			try {
				con = pool.getConnection();
				if (keyWord.equals("null") || keyWord.equals("")) {
					sql = "select count(*) from book where category= ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, category);
				} else {
					sql = "select count(*) from  book where category=? and " + keyField + " like ? ";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, category);
					pstmt.setString(2, "%" + keyWord + "%");
				}
				rs = pstmt.executeQuery();
				if (rs.next()) {
					totalCount = rs.getInt(1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return totalCount;
		}
	
	
		public Vector<BookBean> getBookList(String category, String keyField, String keyWord,
				int start, int end) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			Vector<BookBean> vlist = new Vector<BookBean>();
			try {
				con = pool.getConnection();
				if (keyWord.equals("null") || keyWord.equals("")) {
					sql = "select * from book where category = ? order by regdate desc limit ?, ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, category);
					pstmt.setInt(2, start);
					pstmt.setInt(3, end);
				} else {
					sql = "select * from  book where category =? and " + keyField + " like ? ";
					sql += "order by regdate desc limit ? , ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, category);
					pstmt.setString(2, "%" + keyWord + "%");
					pstmt.setInt(3, start);
					pstmt.setInt(4, end);
				}
				rs = pstmt.executeQuery();
				while (rs.next()) {
					BookBean bean = new BookBean();
					bean.setIsbn( rs.getString("isbn") );
					bean.setTitle( rs.getString("title") );
					bean.setAuthor( rs.getString("author") );
					bean.setPublisher( rs.getString("publisher") );
					bean.setPubdate( rs.getDate("pubdate") );
					bean.setPrice( rs.getInt("price") );
					bean.setCategory( rs.getString("category"));
					bean.setRemaining(rs.getInt("remaining"));
					bean.setRegdate(rs.getDate("regdate"));
					bean.setMdchoice(rs.getString("mdchoice"));
					bean.setImg(rs.getString("img"));
					bean.setDescription(rs.getString("description"));
					vlist.add(bean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return vlist;
		}
		

		public BookBean getBook(String isbn ) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			BookBean bean = new BookBean();
			try {
				con = pool.getConnection();
				sql = "select * from book where isbn = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, isbn);				
				rs = pstmt.executeQuery();
				if (rs.next()) {
					bean.setIsbn( rs.getString("isbn") );
					bean.setTitle( rs.getString("title") );
					bean.setAuthor( rs.getString("author") );
					bean.setPublisher( rs.getString("publisher") );
					bean.setPubdate( rs.getDate("pubdate") );
					bean.setPrice( rs.getInt("price") );
					bean.setCategory( rs.getString("category"));
					bean.setRemaining(rs.getInt("remaining"));
					bean.setRegdate(rs.getDate("regdate"));
					bean.setMdchoice(rs.getString("mdchoice"));
					bean.setImg(rs.getString("img"));
					bean.setDescription(rs.getString("description"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return bean;
		}
		
		
		public boolean insertOrderinfo( String orderer, String[] isbn, String[] quantity) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;			
			boolean success = false;
			try {
				con = pool.getConnection();					
				sql = "select max(num) as tnum from orderinfo";		// max ���� �������� tnum���� ġȯ
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				int num = 0;
				if (rs.next()) {
					num = rs.getInt(1) + 1;
				}				
				//insert ����
				for(int i=0; i<isbn.length; i++) {
					sql = "insert into orderinfo values (?, ?, ?, sysdate(), ?)";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1,  num);
					pstmt.setString(2, orderer);
					pstmt.setString(3, isbn[i]);
					pstmt.setInt(4, Integer.parseInt(quantity[i]));
					int rval = pstmt.executeUpdate();				// rval�� 0 �ƴϸ� 1������ return���� ����
					if (rval > 0){
						success = true;
					}else {
						break;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}				
			return success;
		}

		
		public void deleteCart( String uid, String[] isbn ){
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			
			try {
				con = pool.getConnection();	
				for(int i=0; i<isbn.length; i++){
					sql = "delete from cart where uid = ? and isbn = ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1,  uid);
					pstmt.setString(2, isbn[i]);					
					pstmt.executeUpdate();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
		}

		
		public Vector<OrderBookBean> getOrderList(String orderer){
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;

			Vector<OrderBookBean> list = new Vector<OrderBookBean>();
			
			try {
				con = pool.getConnection();	
				
				sql = "select date(buydate) as buydate, num, B.title, "				//�̾Ƴ��� �÷� : �ֹ���¥ , �ֹ���ȣ , book�� ���̺��� title�� ù��°��
					   + "sum(B.price *A.quantity) as total, "						// book ���̺��� ���� * orderInfo�� ���� -> sum�Լ��� �հ踦 ���� total�� ġȯ
					   + "count(*) as cnt  "										// �ֹ��������� ~~�� count(*) -1 �� 
					   + "from orderInfo A, book B where orderer=? "				//oderInfo A book B �� ġȯ 
					//							���� ��¥
					   + "and  date(buydate)  >= date(subdate(now(), interval 3 month)) " //�ֱ� 3���� , data() : ����� �̾Ƴ��� mysql �Լ� , subdate() : ��¥ ���ִ� �Լ�
					//			�����糯¥	 						�����ݿ��� �� 3������ ����
					   + "and A.isbn = B.isbn "		
					   + "group by num "											// �׷���(���� �ٸ� ���̺� ����)
					   + "order by num desc "; 										// �ֹ���ȣ�� �������� -> �ֱ��ֹ�����
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, orderer);
				rs = pstmt.executeQuery();   
				
				while(rs.next()){
					OrderBookBean bean = new OrderBookBean();
					bean.setBuydate(rs.getDate("buydate"));
					bean.setNum( rs.getInt("num") );
					bean.setTitle( rs.getString("title") );
					bean.setTotal(rs.getInt("total"));
					bean.setCnt(rs.getInt("cnt"));
					list.add(bean);
				}
								
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}	
			    
			return list;
		}
		
		// insert ������ bool -> 1������ 
		public boolean insertCart( String uid, String isbn, int quantity) {
						
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			
			boolean success = false;
			
			try {
				con = pool.getConnection();				
				sql = "insert into cart values (?, ?, ?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1,  uid);
				pstmt.setString(2, isbn);	
				pstmt.setInt(3, quantity);
				int rval = pstmt.executeUpdate();
				
				if(rval > 0){
					success = true;
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			
			return success;
		}
		
		

		public Vector<BookCartBean> getCart(String uid){
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;

			Vector<BookCartBean> list = new Vector<BookCartBean>();
			
			try {
				con = pool.getConnection();	
				
				sql = "select A.isbn, B.title, B.price,  sum(A.quantity) as quantity, "
						+ "(B.price * sum(A.quantity)) as sum "
						+ "from cart A, book B where uid=? and A.isbn = B.isbn "
						+ "group by A.isbn";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, uid);
				rs = pstmt.executeQuery();   
				
				while(rs.next()){
					BookCartBean bean = new BookCartBean();
					bean.setIsbn(rs.getString("isbn"));
					bean.setTitle(rs.getString("title"));
					bean.setPrice( rs.getInt("price") );
					bean.setQuantity( rs.getInt("quantity") );
					bean.setSum(rs.getInt("sum"));
					list.add(bean);
				}
								
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}	
			    
			return list;
		}
		



		//���� �ֹ�����
		//������, å�̸� , ���� , ����, �հ�
		public Vector<OrderBookBean> getOrderDList(int num){
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			
			Vector<OrderBookBean> list = new Vector<OrderBookBean>();
			
			try {
				con = pool.getConnection();
				
				sql = "select date(buydate) as buydate, num , B.title, B.price, A.quantity,"						+ ""
						+ "(B.price * A.quantity) as total "
						+ "from orderInfo A, book B where num = ? and A.isbn = B.isbn ";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery(); 
				
				while(rs.next()) {
					OrderBookBean bean = new OrderBookBean();
					bean.setBuydate(rs.getDate("buydate"));
					bean.setNum(rs.getInt("num"));
					bean.setTitle(rs.getString("title"));
					bean.setPrice(rs.getInt("price"));
					bean.setQuantity(rs.getInt("quantity"));
					bean.setTotal(rs.getInt("total"));
					list.add(bean);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				pool.freeConnection(con, pstmt, rs);
			}
			
			return list;
		}
}
		