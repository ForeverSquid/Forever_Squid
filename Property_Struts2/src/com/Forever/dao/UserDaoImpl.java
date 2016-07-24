package com.Forever.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.Forever.db.DB;
import com.Forever.vo.AllUser;
import com.Forever.vo.CostUser;
import com.Forever.vo.GuanliUser;
import com.Forever.vo.HouseUser;
import com.Forever.vo.MesUser;
import com.Forever.vo.ZhiyuanUser;

public class UserDaoImpl implements IUserDao {

	@Override
	public void zupdate(String name,String zhiwei,int yuexin) {
		// TODO Auto-generated method stub
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		boolean flag=false;
		try {
			String sql="insert into zhiyuan(name,zhiwei,yuexin) values(?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, zhiwei);
			pstmt.setInt(3, yuexin);
			pstmt.executeUpdate();

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
	}
	
	@Override
	public HouseUser houstLogin(String huzhu_name, String password) {
		// TODO Auto-generated method stub
		String sql="select *  from household_user where huzhu_name=? and password=?";
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		HouseUser user=new HouseUser();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, huzhu_name);
			pstmt.setString(2, password);			
			rs=pstmt.executeQuery();
			if(rs.next()){
				user.setArea(rs.getInt("area"));
				user.setDanyuan(rs.getInt("danyuan"));
				user.setHuzhu_name(rs.getString("huzhu_name"));
				user.setRenkou_count(rs.getInt("renkou_count"));
				user.setPassword(rs.getString("password"));
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


		return user;
	}

	@Override
	public GuanliUser vipLogin(String guanli_name, String guanli_password) {
		// TODO Auto-generated method stub
		String sql="select *  from guanli_user where guanli_name=? and guanli_password=?";
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		GuanliUser guser=new GuanliUser();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, guanli_name);
			pstmt.setString(2, guanli_password);			
			rs=pstmt.executeQuery();
			if(rs.next()){
				guser.setGuanli_name(rs.getString("guanli_name"));
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


		return guser;
	}

	@Override
	public boolean House_update(String huzhu_name, String password,
			int renkou_count, int area, int danyuan) {
		// TODO Auto-generated method stub
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		boolean flag=false;
		try {
			String sql="update household_user set huzhu_name=? ,password=? ,renkou_count=? ,area=? where danyuan=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, huzhu_name);
			pstmt.setString(2, password);
			pstmt.setInt(3, renkou_count);
			pstmt.setInt(4, area);
			pstmt.setInt(5, danyuan);
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
	public CostUser show(int danyuan) {
		// TODO Auto-generated method stub
		String sql="select *  from cost where danyuan=? ";
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		CostUser cuser=new CostUser();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, danyuan);
			rs=pstmt.executeQuery();
			if(rs.next()){
				cuser.setDian(rs.getInt("dian"));
				cuser.setCdian_date(rs.getString("cdian_date"));
				cuser.setCshui_date(rs.getString("cshui_date"));
				cuser.setCre_date(rs.getString("cre_date"));
				cuser.setCwygl_date(rs.getString("cwygl_date"));
				cuser.setShui(rs.getInt("shui"));
				cuser.setRe(rs.getInt("re"));
				cuser.setWygl(rs.getInt("wygl"));
				cuser.setBeizhu(rs.getInt("beizhu"));
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
		return cuser;
	}

	@Override
	public List<AllUser> queryall() {
		// TODO Auto-generated method stub
		List<AllUser> list=new ArrayList<AllUser>();
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="select * from cost,household_user where cost.danyuan=household_user.danyuan";
			pstmt=conn.prepareStatement(sql);

			rs=pstmt.executeQuery();

			while(rs.next()){
				AllUser user=new AllUser();
				user.setDanyuan(rs.getInt("danyuan"));
				user.setCre_date(rs.getString("cre_date"));
				user.setCdian_date(rs.getString("cdian_date"));
				user.setCshui_date(rs.getString("cshui_date"));
				user.setCwygl_date(rs.getString("cwygl_date"));
				user.setRe(rs.getInt("re"));
				user.setShui(rs.getInt("shui"));
				user.setWygl(rs.getInt("wygl"));
				user.setDian(rs.getInt("dian"));
				user.setBeizhu(rs.getInt("beizhu"));
				user.setHuzhu_name(rs.getString("huzhu_name"));
				user.setRenkou_count(rs.getInt("renkou_count"));
				user.setArea(rs.getInt("area"));
				user.setPassword(rs.getString("password"));
				list.add(user);				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			

			DB.closeConnection();
		}
		return list;
	}

	@Override
	public List<MesUser> queryMes() {
		// TODO Auto-generated method stub
		List<MesUser> list=new ArrayList<MesUser>();
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="select * from mess";
			pstmt=conn.prepareStatement(sql);

			rs=pstmt.executeQuery();

			while(rs.next()){
				MesUser user=new MesUser();
				user.setDanyuan(rs.getInt("danyuan"));
				user.setTime(rs.getString("time"));
				user.setMes(rs.getString("mes"));
				list.add(user);				
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			

			DB.closeConnection();
		}
		return list;
	}
	
	@Override
	public void qingsuan() {
		// TODO Auto-generated method stub
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		try {
			String sql="update cost set wygl=wygl-1,re=re-2,shui=shui-3,dian=dian-1";
			pstmt=conn.prepareStatement(sql);
			pstmt.executeUpdate();

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
	}

	@Override
	public List<ZhiyuanUser> queryzhiyuan() {
		// TODO Auto-generated method stub
		List<ZhiyuanUser> list=new ArrayList<ZhiyuanUser>();
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="select * from zhiyuan";
			pstmt=conn.prepareStatement(sql);

			rs=pstmt.executeQuery();

			while(rs.next()){
				ZhiyuanUser user=new ZhiyuanUser();
				user.setName(rs.getString("name"));
				user.setId(rs.getInt("id"));
				user.setYuexin(rs.getInt("yuexin"));
				user.setZhiwei(rs.getString("zhiwei"));
				list.add(user);	
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			

			DB.closeConnection();
		}
		return list;
	}

	@Override
	public void setMes(int danyuan,String mes) {
		// TODO Auto-generated method stub
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		boolean flag=false;
		SimpleDateFormat sss=new SimpleDateFormat("yyyy-MM-dd");
		try {
			String sql="insert into mess(danyuan,time,mes) values(?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, danyuan);
			pstmt.setString(2, sss.format(new Date()));
			pstmt.setString(3, mes);
			pstmt.executeUpdate();

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
	}
	
	
}
