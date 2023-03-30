package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import dto.Book;
/**
 * Servlet implementation class kadai901registerservlet
 */
@WebServlet("/Tosyoregisterservlet")
public class Tosyoregisterservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tosyoregisterservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String isbn = request.getParameter("isbn");
		String category = request.getParameter("category");
		String rent = request.getParameter("rent");
		
		int ID = Integer.parseInt(id);
		int ISBN = Integer.parseInt(isbn);
		int RENT = Integer.parseInt(rent);
		
		Book book = new Book(ID,title,author,publisher,ISBN,category,RENT);
		
		int result;
		
			result = BookDAO.registerBook(book);
		
		
		if(result == 1) {
			String view = "WEB-INF/view/Tosyosuccess.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}else{
			String view = "WEB-INF/view/Tosyofail.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
