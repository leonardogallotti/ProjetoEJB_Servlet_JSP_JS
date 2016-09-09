package manager;

import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;

import session.ProdutoBeanRemote;
import entity.Produto;

public class ManagerBean {

	private List<Produto> lista;
	ProdutoBeanRemote<Produto> bean;
	
	
	public ManagerBean() {
		try {
			Context ctx = new InitialContext();
			bean = (ProdutoBeanRemote<Produto>) ctx.lookup("java:app/EJB_Client_JS/ProdutoBean!session.ProdutoBeanRemote");
			
		} catch (Exception e) {
			
		}
	}


	public List<Produto> getLista() {
		try {
			lista = bean.findAll();
		} catch (Exception e) {
			e.getMessage();
		}
		return lista;
	}


	public void setLista(List<Produto> lista) {
		this.lista = lista;
	}
	
	
	
	
}
