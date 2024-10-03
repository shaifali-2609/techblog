package servlets;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseobjectacssesdao.Userdao;
import entities.User;
import helper.Conp;

@MultipartConfig
@WebServlet("/Registerserv")
public class Registerserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Registerserv() {
        super();
       
    }

	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String cheack=request.getParameter("check");
if(cheack==null) {
	out.println("agree terms and condition");
}
else {
	String name=request.getParameter("txtname");
	String email=request.getParameter("txtemail");
	String password=request.getParameter("txtpass");
	String gender=request.getParameter("gender");
	String about=request.getParameter("about");
	if (about==null) {
	    about="";}
	User user=new User(name,email,password,gender,about);
	Userdao dao=new Userdao(Conp.getconnection());
	
		
	
	if(dao.saveuser(user)) {
		out.println("Registerd successfully");
		
	}
	else {
		out.print("error");
	}
	
}
	}

}
