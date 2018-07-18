package ch08;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
 
 public class MemberMgr {
    
 	private final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
 	private final String JDBC_URL = "jdbc:mysql://localhost:3307/mydb";
 	private final String USER = "root";
 	private final String PASS = "seoil";
 	
 	private Connection conn = null;
 	private PreparedStatement stmt = null;
 	private ResultSet rs = null;
 
 	public MemberMgr() {
 	   try{
 		   Class.forName(JDBC_DRIVER);
 	   }catch(Exception ex){
 	      System.out.println("Error : JDBC 드라이버 로딩 실패");
 	      ex.printStackTrace();
 	   }
     }//MemberMgr()
 
    public Vector<MemberBean> getMemberList() {

       Vector<MemberBean> vecList = new Vector<MemberBean>();
       try {
          conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
          String strQuery = "select * from member";
          stmt = conn.prepareStatement(strQuery);
          rs = stmt.executeQuery();
		  while (rs.next()) {
             MemberBean bean = new MemberBean();
             bean.setId (rs.getString("id"));
             bean.setPasswd (rs.getString("passwd"));
             bean.setName (rs.getString("name"));
             
             bean.setSex (rs.getString("sex"));
             bean.setBirthday (rs.getString("birthday"));
             bean.setEmail (rs.getString("email"));
             
             bean.setZipcode (rs.getString("zipcode"));
             bean.setHobby (rs.getString("hobby"));
             bean.setJob (rs.getString("job"));
             
             
 			 
 			 	
             vecList.add(bean);
          }
       } catch (Exception ex) {
          System.out.println("Exception" + ex);
          ex.printStackTrace();
       } finally {
          if(rs!=null)   try{rs.close();}  catch(SQLException e){}
		  if(stmt!=null) try{stmt.close();}catch(SQLException e){}
	      if(conn!=null) try{conn.close();}catch(SQLException e){}
       }
       return vecList;
    }
    
    
    public boolean insertMember(MemberBean bean) {

    	boolean success = false;
       
        try {
           conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
           String strQuery = "insert into member values (?,?,?,?,?,?,?,?,?,?)";
           stmt = conn.prepareStatement(strQuery);
           stmt.setString(1, bean.getId());
           stmt.setString(2, bean.getPasswd());
           stmt.setString(3, bean.getName());
           stmt.setString(4, bean.getSex());
           stmt.setString(5, bean.getBirthday());
           stmt.setString(6, bean.getEmail());
           stmt.setString(7, bean.getZipcode());
           stmt.setString(8, bean.getHobby());
           stmt.setString(9, bean.getJob());
           stmt.setString(10, bean.getAddress());

           
           int retValue = stmt.executeUpdate();
 		   if(retValue == 1) {
 			   success = true;
 		   }
           
        } catch (Exception ex) {
           System.out.println("Exception" + ex);
           ex.printStackTrace();
        } finally {
           if(rs!=null)   try{rs.close();}  catch(SQLException e){}
 		  if(stmt!=null) try{stmt.close();}catch(SQLException e){}
 	      if(conn!=null) try{conn.close();}catch(SQLException e){}
        }
        return success;
     }
    
 }//class
 
 
 
 
 