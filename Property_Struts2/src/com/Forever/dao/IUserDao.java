package com.Forever.dao;

import java.util.List;

import com.Forever.vo.AllUser;
import com.Forever.vo.CostUser;
import com.Forever.vo.GuanliUser;
import com.Forever.vo.HouseUser;
import com.Forever.vo.MesUser;
import com.Forever.vo.ZhiyuanUser;

public interface IUserDao {
	public HouseUser houstLogin(String huzhu_name,String password);
	public boolean House_update(String huzhu_name,String password,int renkou_count,int area,int danyuan);
	public CostUser show(int danyuan);
	public GuanliUser vipLogin(String guanli_name,String guanli_password);
	public List<AllUser> queryall();
	public void qingsuan();
	public List<ZhiyuanUser> queryzhiyuan();
	public void zupdate(String name,String zhiwei,int yuexin);
	public List<MesUser> queryMes();
	public void setMes(int danyuan,String mes);
}
