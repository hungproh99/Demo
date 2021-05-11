package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import service.CategoryService;
import service.ProductService;
@WebServlet(urlPatterns="/welcome")

public class WellcomeController extends HttpServlet {
	ProductService productService = new ProductService();
	CategoryService cateService = new CategoryService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> productList = productService.getAll();
		req.setAttribute("pwelcome", productList);

		req.getRequestDispatcher("/view/client/view/index.jsp").forward(req, resp);
	}
	

}
