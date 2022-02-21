package bkap.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bkap.entities.Product;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		ProductModel proModel = new ProductModel();
		if (action.equals("getAllProduct")) {
			getAllProduct(request, response, proModel);
		} else if (action.equals("Add")) {
			Product newPro = new Product();
			newPro.setProductId(request.getParameter("productId"));
			newPro.setProductName(request.getParameter("productName"));
			newPro.setPrice(Float.parseFloat(request.getParameter("price")));
			newPro.setDescriptions(request.getParameter("descriptions"));
			newPro.setTitle(request.getParameter("title"));
			newPro.setStatus(Boolean.parseBoolean(request.getParameter("status")));
			newPro.setCatalogId(Integer.parseInt(request.getParameter("catalogId")));
			newPro.setCatalogName(request.getParameter("catalogName"));
			boolean flag = proModel.addProduct(newPro);
			if (flag) {
				getAllProduct(request, response, proModel);
			} else {
				request.getRequestDispatcher("view/error.jsp").forward(request, response);
			}
		} else if (action.equals("getProductById")) {
			try {
				Product proId = proModel.getProductById(request.getParameter("productId"));
				request.setAttribute("proId", proId);
				request.getRequestDispatcher("view/ShowProductById.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				request.getRequestDispatcher("view/error.jsp").forward(request, response);
			}
		} else if (action.equals("Delete")) {
			try {
				proModel.deleteProduct(request.getParameter("productId"));
				getAllProduct(request, response, proModel);
			} catch (Exception e) {
				// TODO: handle exception
				request.getRequestDispatcher("view/error.jsp").forward(request, response);
			}
		} else if (action.equals("updateProductById")) {
			String updateProId = request.getParameter("productId");
			Product updatePro = proModel.getProductById(updateProId);
			request.setAttribute("updateProId", updatePro);
			request.getRequestDispatcher("view/UpdateProduct.jsp").forward(request, response);
		} else if (action.equals("Update")) {
			Product updatePro = new Product();
			updatePro.setProductId(request.getParameter("productId"));
			updatePro.setProductName(request.getParameter("productName"));
			updatePro.setPrice(Float.parseFloat(request.getParameter("price")));
			updatePro.setDescriptions(request.getParameter("descriptions"));
			updatePro.setTitle(request.getParameter("title"));
			updatePro.setStatus(Boolean.parseBoolean(request.getParameter("status")));
			updatePro.setCatalogId(Integer.parseInt(request.getParameter("catalogId")));
			updatePro.setCatalogName(request.getParameter("catalogName"));
			boolean flag = proModel.updateProduct(updatePro);
			if (flag) {
				getAllProduct(request, response, proModel);
			} else {
				request.getRequestDispatcher("view/error.jsp").forward(request, response);
			}
		}
	}

	public void getAllProduct(HttpServletRequest request, HttpServletResponse response, ProductModel proModel)
			throws ServletException, IOException {
		List<Product> listPro = proModel.getAllProduct();
		request.setAttribute("listPro", listPro);
		request.getRequestDispatcher("view/ShowAllProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
