package servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import company_service.company_service;

/**
 * Servlet implementation class customerservlet
 */
//@WebServlet("/customerservlet")
public class customerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private company_service service;

	public customerservlet() {
		service = new company_service();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProc(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProc(request, response);
	}

	protected void doProc(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();
		String contextPath = request.getContextPath();
		String reqUri = request.getRequestURI();
		
	

		if (reqUri.equals(contextPath + "/company_insert.co")) {
			String name = request.getParameter("company_name").trim();
			String manager = request.getParameter("manager_name").trim();
			String phone = request.getParameter("manager_phone").trim();
			String address = request.getParameter("company_address").trim();
			String email = request.getParameter("manager_email").trim();
			

			if (service.company_insert(name, manager,phone,address,email)) {
				out.println("<script>alert('고객사 등록 성공'); location.href='index.do'</script>");

			} else {
				out.println("<script>alert('고객사 등록  실패'); location.href='company_insert_page.co'</script>");

			}
		}
		else if (reqUri.equals(contextPath + "/company_insert_page.co")) {
				System.out.println(contextPath + "/company_insert_page.co");
			request.getRequestDispatcher("index.jsp?section=company_insert.jsp").forward(request, response);

		}
		
		else if (reqUri.equals(contextPath + "/company_list.co")) {
			 request.setAttribute("companyList", service.getcompanyList());
            request.getRequestDispatcher("index.jsp?section=company_list.jsp").forward(request, response);
			
		}
		
		else if (reqUri.equals(contextPath + "/company_update.co")) {
			
			String name = request.getParameter("name").trim();
			 request.setAttribute("companyUpdate", service.companyupdate(name));
           request.getRequestDispatcher("company_update.jsp").forward(request, response);
			
		}
		
		else if (reqUri.equals(contextPath + "/company_update_ok.co")) {
			String name = request.getParameter("company_name").trim();
			String manager = request.getParameter("manager_name").trim();
			String phone = request.getParameter("manager_phone").trim();
			String address = request.getParameter("company_address").trim();
			String email = request.getParameter("manager_email").trim();
			String ori_name = request.getParameter("name").trim();

			if (service.company_update(name, manager,phone,address,email,ori_name)) {
				out.println("<script>alert('고객사 수정 성공'); location.href='index.do'</script>");

			} else {
				out.println("<script>alert('고객사 수정  실패'); location.href='company_insert_page.co'</script>");

			}
		}
	
	}
}
