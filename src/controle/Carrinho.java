package controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProdutoDAO;
import modelo.Produto;

@WebServlet("/Carrinho")
public class Carrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Carrinho() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		int id = Integer.parseInt(request.getParameter("id"));
		List<Produto> carrinho = new ArrayList<Produto>();
		ProdutoDAO dao = new ProdutoDAO();
		Produto produto = new Produto();
		produto = dao.retornarProduto(id);
		
		if(session.getAttribute("carrinho") != null) {
			carrinho.addAll((ArrayList<Produto>) session.getAttribute("carrinho"));	// recupera o que ja estiver salvo no carrinho 
		}
		
		carrinho.add(produto);	// acrescenta o novo produto na lista
		session.setAttribute("carrinho", carrinho);	// salva o carrinho de volta na sessao
		
		response.sendRedirect("carrinho.jsp");
	}
}
