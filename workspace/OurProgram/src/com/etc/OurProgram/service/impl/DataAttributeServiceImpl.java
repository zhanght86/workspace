package com.etc.OurProgram.service.impl;
import com.etc.OurProgram.javabean.basedataUser;
import com.etc.OurProgram.service.DataAttributeService;
import com.etc.OurProgram.util.Conn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DataAttributeServiceImpl implements DataAttributeService {

	public boolean accounting(String num, String name,String qq,String id) {
		if(qq==null||num==null||name==null)
			return false;
		Conn conn = new Conn();
		Connection connection =  conn.getConnection(null);
		PreparedStatement pstmt;
		
			try {
				if(qq.equals("1"))           //添加 
				{
				pstmt = connection.prepareStatement("SELECT * FROM dataAttribute WHERE name=?");
				pstmt.setString(1, name);
				ResultSet rs0 = pstmt.executeQuery();
				if ( rs0.next()){
					return false;
				}else
				{
					pstmt = connection.prepareStatement("insert into dataAttribute(num,name) values(?,?)");
					pstmt.setString(1, num);
					pstmt.setString(2, name);
					int rs = pstmt.executeUpdate();
						if (rs>0) {
							return true;
						}					
				}
				}
				else if(qq.equals("2"))         //修改
				{
					pstmt = connection.prepareStatement("SELECT * FROM dataAttribute WHERE name=?");
					pstmt.setString(1, name);
					ResultSet rs2 = pstmt.executeQuery();
					if ( rs2.next()){
						return false;
					}
					pstmt = connection.prepareStatement("SELECT * FROM dataAttribute WHERE id=?");
					pstmt.setString(1, id);
					ResultSet rs0 = pstmt.executeQuery();
					if ( rs0.next()){					
						pstmt = connection.prepareStatement("update dataAttribute set num=? ,name=? where  id=? ");
						pstmt.setString(1, num);
						pstmt.setString(2,name);
						pstmt.setString(3,id);
						int rs = pstmt.executeUpdate();
							if (rs>0) {
								return true;
							}					
					}
				}
				else  if(qq.equals("3"))                           //删除
				{
					pstmt = connection.prepareStatement("SELECT * FROM dataAttribute WHERE id=?");
					pstmt.setString(1, id);
					ResultSet rs0 = pstmt.executeQuery();
					if ( rs0.next()){
					
					
						pstmt = connection.prepareStatement("delete from dataAttribute where id=?");
						pstmt.setString(1, id);
						int rs = pstmt.executeUpdate();
							if (rs>0) {
								return true;
							}					
					}				
				}
				else
					return false;
			   try {
					pstmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			} 
			
			catch (SQLException e) {
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
     
	public  List queryUser(int i,int pagesize) {
		// TODO Auto-generated method stub
		Conn conn = new Conn();
		Connection connection = conn.getConnection(null);
		Statement pstmt;
		try {
			pstmt = connection.createStatement();
			ResultSet rs = pstmt.executeQuery("SELECT * FROM dataAttribute order by id asc limit "+i+","+pagesize);
			List list = new ArrayList();
			while(rs.next()){
				basedataUser u = new basedataUser();
				u.setId(String.valueOf(rs.getString("id")));
				u.setNum(rs.getString("num"));
				u.setName(rs.getString("name"));				
				list.add(u);
			}
			try {
				pstmt.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	//查询总行数
    public int count() {
        int intRowCount = 0;//总行数
        Conn conn = new Conn();
		Connection connection = conn.getConnection(null);
		PreparedStatement pstmt;       
        try
        {            
        	pstmt = connection.prepareStatement("SELECT count(id) FROM dataAttribute");
			ResultSet rsq = pstmt.executeQuery();
            rsq.next();//游标指向第一行
            intRowCount=rsq.getInt(1);//取得总行数
            rsq.close() ;
            pstmt.close();
        }
        catch(Exception e)
        {
            System.out.println(e) ;
        }
        return intRowCount;
    }
	
}
