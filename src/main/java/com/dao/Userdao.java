package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;

public class Userdao {
	private Connection conn;
	public Userdao(Connection conn) {
		super();
		this.conn=conn;
	}
	
	public boolean registerAlumni(User u) {
		boolean f=false;
		try {
			String query="insert into alumnus_bio(name,linkdn_link,gender,batch,branch,email,status,work,company,profile_img,github_link,password) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,u.getFullname());
			ps.setString(2,u.getLinkdnLink());
			ps.setString(3,u.getGender());
			ps.setString(4,u.getBatch());
			ps.setString(5,u.getBranch());
			ps.setString(6,u.getEmail());
			ps.setString(7,u.getStatus());
			ps.setString(8,u.getWork());
			ps.setString(9,u.getCompany());
			ps.setString(10,u.getProfile_img());
			ps.setString(11, u.getGithubLink());
			ps.setString(12, u.getPassword());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}


		}catch(SQLException e) {
			e.printStackTrace();

		}
		return f;
	}
	
	public User login(String email,String password) {
		User u=null;
		try {
			String query="select * from alumnus_bio where email=?";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,email);
			
		
		ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullname(rs.getString(2));
				u.setLinkdnLink(rs.getString(3));
				u.setGender(rs.getString(4));
				u.setBatch(rs.getString(5));
				u.setBranch(rs.getString(6));
				u.setEmail(rs.getString(7));
				u.setStatus(rs.getString(8));
				u.setWork(rs.getString(9));
				u.setCompany(rs.getString(10));
				u.setProfile_img(rs.getString(11));
				u.setGithubLink(rs.getString(12));
				u.setPassword(rs.getString(13));
				
			
				
			
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}
		
		
		return u;
		
	}
	

	public String getHashedPwd(String email) {
		try {
			String query="select password from alumnus_bio where email=?";
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1,email);
			String pwd="";
		
		ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			pwd=rs.getString("password");
			return pwd;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}
		
		
		
		return "";
		
	}
	
	public User getUserById(int id) {
		User u=null;
		
		String query="select * from alumnus_bio where id=?";
	try {	
		PreparedStatement ps=conn.prepareStatement(query);
		ps.setInt(1,id);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			u=new User();
			u.setId(rs.getInt(1));
			u.setFullname(rs.getString(2));
			u.setLinkdnLink(rs.getString(3));
			u.setGender(rs.getString(4));
			u.setBatch(rs.getString(5));
			u.setBranch(rs.getString(6));
			u.setEmail(rs.getString(7));
			u.setStatus(rs.getString(8));
			u.setWork(rs.getString(9));
			u.setCompany(rs.getString(10));
			u.setProfile_img(rs.getString(11));
			u.setGithubLink(rs.getString(12));
			u.setPassword(rs.getString(13));
			
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
		return u;
	}
	
	
	
	
	
	
	
	
	
	public boolean updateProfile(User u) {
		boolean f=false;
		try {
		String query="UPDATE alumnus_bio SET name = ?, linkdn_link = ?, gender = ?, batch = ?, branch = ?, email = ?, status = ?, work = ?, company = ?, profile_img = ?, github_link = ?, password =? WHERE id = ?";
		PreparedStatement ps=conn.prepareStatement(query);
		ps.setString(1,u.getFullname());
		ps.setString(2,u.getLinkdnLink());
		ps.setString(3,u.getGender());
		ps.setString(4,u.getBatch());
		ps.setString(5,u.getBranch());
		ps.setString(6,u.getEmail());
		ps.setString(7,u.getStatus());
		ps.setString(8,u.getWork());
		ps.setString(9,u.getCompany());
		ps.setString(10,u.getProfile_img());
		ps.setString(11, u.getGithubLink());
		ps.setString(12, u.getPassword());
		ps.setInt(13, u.getId());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	public List<User> getUser() {
		
		User u=null;
		List<User>list=new ArrayList<>();
		String query="select * from alumnus_bio";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullname(rs.getString(2));
				u.setLinkdnLink(rs.getString(3));
				u.setGender(rs.getString(4));
				u.setBatch(rs.getString(5));
				u.setBranch(rs.getString(6));
				u.setEmail(rs.getString(7));
				u.setStatus(rs.getString(8));
				u.setWork(rs.getString(9));
				u.setCompany(rs.getString(10));
				u.setProfile_img(rs.getString(11));
				u.setGithubLink(rs.getString(12));
				u.setPassword(rs.getString(13));
				list.add(u);
				
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		}


	public int getUserCount() {
		int size=0;
		try {
			String query="select * from alumnus_bio";
			PreparedStatement ps=conn.prepareStatement(query);
			ResultSet user=ps.executeQuery();
			while(user.next()) {
				size++;
	}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return size;
	}	

	
}
