package ch02;

import java.io.IOException; //예외처리:오류가 났지만 안 난 것처럼 포장
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=utf-8");
		
		try {
			PrintWriter out=response.getWriter();
			out.println("<HTML>");
			out.println("<HEAD><TITLE>Servlet 연습</TITLE></HEAD>");
			out.println("<BODY>");
			out.println("처음 작성하는 Servlet");
			out.println("</BODY>");
			out.println("</HTML>");
			out.close();
		}catch(Exception e) {
			getServletContext().log("Error in HelloServlet:", e);
		}
	}
	
	//doGet은 보안에 취약, doPost는 보안 ↑

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
