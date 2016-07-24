package com.Forever.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Forever.db.DB;
import com.Forever.vo.User;

public class UserDaoImpl implements IUserDao{

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		String sql="select * from bbsuser where username=? and password=?";
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		User user1=new User();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());			
			
			rs=pstmt.executeQuery();
			if(rs.next()){
				user1.setUsername(rs.getString("username"));
				user1.setPassword(rs.getString("password"));
				user1.setId(rs.getInt("id"));
			}else{
				user1=null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
			DB.closeConnection();
		}	
		return user1;
	}
	
	@Override
	public InputStream getPic(int id) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt=null;
		Connection conn=DB.getConnection();
		ResultSet rs=null;
		InputStream is=null;
		try {
			String sql="select pic from bbsuser where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, id);
		
			rs=pstmt.executeQuery();
			if(rs.next()){
				is=rs.getBinaryStream("pic");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			
			if(pstmt!=null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}				
			}
			if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return is;
		
	}

	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		boolean flag=false;
		try {
			String sql="insert into bbsuser(username,password,pic,pagenum) values(?,?,?,5)";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			
			File file=new File(user.getFpath());
			FileInputStream fs=new FileInputStream(file);
			
			pstmt.setBinaryStream(3, fs, fs.available());
			
			flag=pstmt.executeUpdate()>0?true:false;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DB.closeConnection();
		}
		
		
		return flag;
	}

	@Override
	public boolean updatePagenum(int id, int userid) {
		// TODO Auto-generated method stub
		Connection conn=DB.getConnection();
		boolean flag=false;
		PreparedStatement ptmt=null;
		
		try {
			
			String sql="update bbsuser set pagenum=? where id=?";
			ptmt=conn.prepareStatement(sql);
			ptmt.setInt(1, id);
			ptmt.setInt(2, userid);
			
			flag=ptmt.executeUpdate()>0?true:false;
			
		} catch (Exception e){
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return flag;
	}
}
