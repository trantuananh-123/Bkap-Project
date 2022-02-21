package bkap.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bkap.entity.Categories;
import bkap.model.CatalogModel;

/**
 * Servlet implementation class CatalogController
 */
@WebServlet("/CatalogController")
public class CatalogController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CatalogController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Phan tich request de thuc hien yeu cau nguoi dung
		//Lay tham so action trong request
		String action = request.getParameter("action");
		CatalogModel catModel = new CatalogModel();
		if (action.equals("GetAll")) {
			//Thuc hien lay du lieu trong db ra
			List<Categories> listCat = catModel.getAllCatalog();
			//Hien thi ket qua ra trang listCategories.jsp
			//-add listCat vao request
			request.setAttribute("listCat", listCat);
			//-Chuyen toan bo request, response sang trang listCategories.jsp
			request.getRequestDispatcher("view/listCategories.jsp").forward(request, response);
			
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
