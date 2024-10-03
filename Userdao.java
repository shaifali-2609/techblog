package databaseobjectacssesdao;

import java.sql.*;

import entities.User;

public class Userdao {
	private Connection con;

	
	public Userdao(Connection con) {
		super();
		this.con = con;
	}
	public boolean saveuser(User user) {
		boolean f=false;
		try {
			String query="insert into user(name, email,password,gender,about) values(?,?,?,?,?)";
			PreparedStatement ps=this.con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getAbout());
			ps.executeUpdate();
			f=true;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return f;
	}
	public User getemailandpassword(String email,String password) {
		User user=null;
		try {
			String query="select * from user where email=? and password=?";
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
		
			ResultSet set=ps.executeQuery();
			if(set.next()) {
			user=new User();
				
				user.setName(set.getString("name"));
				user.setId(set.getInt("id"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				user.setDatetime(set.getTimestamp("dater"));
			user.setProfile(set.getString("profile"));			
				
			}		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return user;
		
	}
	public  boolean updateuser(User user)
	{ boolean f=false;
		try {
			String query="update user set name=?,email=?,password=?,gender=?,about=?,profile=?where id=?";
			PreparedStatement p= con.prepareStatement(query);
			p.setString(1, user.getName());
 			p.setString(2, user.getEmail());
			p.setString(3, user.getPassword());
			p.setString(4, user.getGender());
			p.setString(5, user.getAbout());
			p.setString(6, user.getProfile());
			p.setInt(7, user.getId());
			p.executeUpdate();
		f=true;}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return f;
	}

}
