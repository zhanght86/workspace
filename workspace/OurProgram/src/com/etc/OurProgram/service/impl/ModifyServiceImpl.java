package com.etc.OurProgram.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.etc.OurProgram.service.ModifyService;
import com.etc.OurProgram.util.Conn;

public class ModifyServiceImpl implements ModifyService {

	public boolean modify(String username, String password, String power,
			String department) {
		// TODO Auto-generated method stub
		Conn conn = new Conn();
		Connection connection = conn.getConnection(null);
		PreparedStatement pstmt;
		try {
		pstmt = connection.prepareStatement("update login set password=?,power=?,department=? where username=?");
			
			pstmt.setString(1,password);
			pstmt.setString(2,power);
			pstmt.setString(3,department);
			pstmt.setString(4,username);
			int i = pstmt.executeUpdate();
			if(i>0){
				return true;
			}
			
		
		try {
			pstmt.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return false;
}

}
