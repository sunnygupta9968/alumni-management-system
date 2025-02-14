package com.user.servlet;

import java.io.IOException;

import com.dao.Userdao;
import com.db.DBConnection;
import com.entity.User;

import at.favre.lib.crypto.bcrypt.BCrypt;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String linkdnProf=req.getParameter("linkdn-prof");
		String gender=req.getParameter("gender");
		String batch=req.getParameter("batch");
		String branch=req.getParameter("branch");
		String email=req.getParameter("email");
		String pwd=req.getParameter("password");
		String hashedPwd=hashPassword(pwd);
		String status="";
		String work="work";
		String company="company";
		String profileImg="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.web";
		String githubLink="git";
		User u=new User(name, linkdnProf, gender, batch, branch, email, status, work, company, profileImg, githubLink, hashedPwd);
		Userdao dao=new Userdao(DBConnection.getConn());
		boolean f=dao.registerAlumni(u);
		HttpSession session=req.getSession();
		if(f) {
			session.setAttribute("sucMsg", "Registered Succesfully!");
			resp.sendRedirect("login.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Failed to Register");
			resp.sendRedirect("register.jsp");
		}
	}
	
	// Method to hash a password
    public static String hashPassword(String plainTextPassword) {
        return BCrypt.withDefaults().hashToString(12, plainTextPassword.toCharArray()); // 12 = cost factor
    }
		
}
