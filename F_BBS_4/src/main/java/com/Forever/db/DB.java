package com.Forever.db;

import java.sql.*;


public class DB {
	public static void main(String[] args) {
		System.out.print(DB.getConnection());
	}
	private static Connection conn;
	public static Connection getConnection(){
		
		try {
			
			Class.forName("org.gjt.mm.mysql.Driver");

			conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test?useUnicode=true&characterEncoding=utf-8&autoReconnect=true", "root", "");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return conn;
	}
	public static void closeConnection(){
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
}
