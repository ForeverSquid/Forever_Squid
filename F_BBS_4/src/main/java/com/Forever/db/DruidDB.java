package com.Forever.db;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;
import com.alibaba.druid.pool.DruidPooledConnection;

public class DruidDB {
	private static DruidDataSource ds=null;
	static{
		Properties pro=new Properties();
		
		try {
			pro.load(DruidDB.class.getClassLoader().getResourceAsStream("druid.ini"));
			ds=(DruidDataSource)DruidDataSourceFactory.createDataSource(pro);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static DruidPooledConnection getConnection(){
		DruidPooledConnection conn=null;
		try {
			conn=ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
		
	}
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
	
}
