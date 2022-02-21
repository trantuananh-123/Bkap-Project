package bkap.controller;

import java.io.Console;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bkap.enitity.Product;
import bkap.model.ProductModel;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		ProductModel proModel = new ProductModel();
		if(action.equals("getAllProduct")) {
			getAllProduct(request, response, proModel);
		}
		else if(action.equals("Create")) {
			Product pro = new Product();
			Scanner sc = new Scanner(System.in);
			pro.setProductId(request.getParameter("productId"));
			pro.setProductName(request.getParameter("productName"));
			pro.setPrice(Float.parseFloat(request.getParameter("price")));
			pro.setDescription(request.getParameter("description"));
			pro.setTitle(request.getParameter("title"));
			pro.setStatus(Boolean.parseBoolean(request.getParameter("status")));
			boolean flag = proModel.addProduct(pro);
			if(flag) {
				getAllProduct(request, response, proModel);
			}
			else {
				request.getRequestDispatcher("view/error.jsp").forward(request, response);
			}
		}
		else if(action.equals("getProductById")) {
			String productId = request.getParameter("productId");
			Product pro = proModel.getProductById(productId);
			request.setAttribute("proUpdate", pro);
			request.getRequestDispatcher("view/updateProduct.jsp").forward(request, response);
		}
	}
	
	public void getAllProduct(HttpServletRequest request, HttpServletResponse response, ProductModel proModel) throws ServletException, IOException{
		List<Product> listPro = proModel.getAllProduct();
		request.setAttribute("listPro", listPro);
		request.getRequestDispatcher("view/listProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
