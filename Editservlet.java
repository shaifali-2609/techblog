package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import databaseobjectacssesdao.Userdao;
import entities.Messege;
import entities.User;
import helper.Conp;
import helper.Helper;

@MultipartConfig
@WebServlet("/Editservlet")
public class Editservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Editservlet() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
	String useremail=request.getParameter("usemail");
	String  username=request.getParameter("usname");
	String userpass=request.getParameter("uspass");
	String userabout=request.getParameter("uabout");
	Part part=request.getPart("image");
	String imagename=part.getSubmittedFileName();
	//get user from session
	HttpSession s=request.getSession();
	User user=(User)s.getAttribute("currentobj");
	user.setEmail(useremail);
	user.setName(username);
	user.setPassword(userpass);
	user.setAbout(userabout);
	String oldfile=user.getProfile();
	user.setProfile(imagename);
//update in database
Userdao dao=new Userdao(Conp.getconnection());
boolean ans=dao.updateuser(user);
if(ans) {
	String path= request.getRealPath("/")+"pics"+File.separator+user.getProfile();
	//delete code
	String oldfilepath= request.getRealPath("/")+"pics"+File.separator+oldfile;

    if (!oldfile.equals("default.png") &&Helper.fileExists(oldfilepath)) {
        if (Helper.deletefile(oldfilepath)) {
            out.println("Old profile picture deleted successfully");
        } else {
            out.println("Failed to delete old profile picture");
        }
    }	
	
	if(Helper.savefile(part.getInputStream(), path)) {
		out.println("profile updated");
		Messege msg=new Messege("profile details updated","success","alert-success");
		s.setAttribute("msg", msg);
	}
	else {
		Messege msg=new Messege("invaild detail!!...try again","error","alert-danger");
		s.setAttribute("msg", msg);	
	}
}
else {
	out.println("notupdate");
	Messege msg=new Messege("invaild detail!!...try again","error","alert-danger");
	s.setAttribute("msg", msg);
}
	response.sendRedirect("profilep.jsp");
}

	
	}


