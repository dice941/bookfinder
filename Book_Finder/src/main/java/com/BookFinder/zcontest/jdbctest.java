package com.BookFinder.zcontest;

import java.sql.DriverManager;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class jdbctest
{
	private static final Logger log = LoggerFactory.getLogger(jdbctest.class);
	public static void main (String[] args) throws ClassNotFoundException, SQLException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","springdb","1234");
		System.out.println("정상연결");
	}
}

