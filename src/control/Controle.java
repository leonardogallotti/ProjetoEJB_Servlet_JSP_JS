package control;

import java.io.IOException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import session.ProdutoBeanRemote;
import entity.Produto;


@WebServlet("/Controle")
public class Controle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Produto produto;
	private ProdutoBeanRemote<Produto> bean;
	
	
	public Controle() {
		produto = new Produto();		
		try {
			Context ctx = new InitialContext();
			bean = (ProdutoBeanRemote<Produto>) ctx.lookup("java:app/EJB_Client_JS/ProdutoBean!session.ProdutoBeanRemote");		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome =           request.getParameter("pnome");
		Integer quantidade =   new Integer(request.getParameter("pquantidade"));
		try {
			produto = new Produto(null, nome, quantidade);
			bean.create(produto);
		
		    response.getWriter().println("Dados Gravados" + produto);		
		} catch (Exception e) {
			response.getWriter().println("Error" + e.getMessage());
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
