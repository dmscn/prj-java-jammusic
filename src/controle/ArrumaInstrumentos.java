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

@WebServlet("/ArrumaInstrumentos")
public class ArrumaInstrumentos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArrumaInstrumentos() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		ProdutoDAO dao = new ProdutoDAO();
		List<Produto> listaProduto = new ArrayList<Produto>();
		listaProduto = dao.listarProdutos(null);
		
		session.setAttribute("listaProduto", listaProduto);
		
		response.sendRedirect("instrumentos.jsp");
	}

}
