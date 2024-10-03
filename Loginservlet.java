package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databaseobjectacssesdao.Userdao;
import entities.Messege;
import entities.User;
import helper.Conp;


@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Loginservlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String uemail=request.getParameter("txtemail");
		String upass=request.getParameter("txtpass");
		Userdao dao=new Userdao(Conp.getconnection());
		User u=dao.getemailandpassword(uemail,upass);
		if(u==null) {
			//out.println("invaild detail ...try again");
			Messege msg=new Messege("invaild detail!!...try again","error","alert-danger");
			
			HttpSession s=request.getSession();
			s.setAttribute("msg", msg);
			response.sendRedirect("login.jsp");
			
			
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("currentobj", u);
			  response.sendRedirect("profilep.jsp");
		}
	}

}
