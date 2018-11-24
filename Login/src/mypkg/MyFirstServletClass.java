package mypkg;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLDecoder;
import java.net.URLEncoder;
/**
 * Servlet implementation class MyFirstServletClass
 */
@WebServlet({"/input_name" })
public class MyFirstServletClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyFirstServletClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		doCommonProc(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		doCommonProc(request,response);
	}
	
	protected void doCommonProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Common function
		String inputName=request.getParameter("name");
//		System.out.println("print Username");
//		System.out.println(inputName);
		if(inputName==null || inputName.length()==0) {
			response.sendRedirect("test_input_name.jsp");
		}
		
		String resultName = encInputName(inputName,request,response);
		String dec_resultName = decInputName(resultName,request,response);
		
	}
	
	public String encInputName(String inputName, HttpServletRequest request, HttpServletResponse response) {
		String resultName = "";
		try {
			if(inputName==null || inputName.length()==0) {
				response.sendRedirect("test_input_name.jsp");
			}
			else {
				System.out.println("USERNAME : "+inputName);
				resultName = URLEncoder.encode(inputName,"utf-8");
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return resultName;
	}
	public String decInputName(String inputName, HttpServletRequest request, HttpServletResponse response) {
		String resultName = "";
		try {
			if(inputName==null || inputName.length()==0) {
				response.sendRedirect("test_input_name.jsp");
			}
			else {
				System.out.println("USERNAME : "+inputName);
				resultName = URLDecoder.decode(inputName,"utf-8");
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return resultName;
	}
}
