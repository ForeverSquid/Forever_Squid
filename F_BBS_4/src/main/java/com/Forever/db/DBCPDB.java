package com.Forever.db;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSourceFactory;

public class DBCPDB {
	private static DataSource ds=null;
	static{
		Properties pro=new Properties();
		try {
			pro.load(DBCPDB.class.getClassLoader().getResourceAsStream("dbcp.ini"));
			try {
				ds=BasicDataSourceFactory.createDataSource(pro);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private static Connection conn;
	public  static Connection getConnection(){
		
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
