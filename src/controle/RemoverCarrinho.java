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

import modelo.Produto;

@WebServlet("/RemoverCarrinho")
public class RemoverCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RemoverCarrinho() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Produto> carrinho = new ArrayList<Produto>();
		String[] values = request.getParameterValues("remove"); // guarda o id dos items marcados para remoçao em um vetor
		
		carrinho = (ArrayList<Produto>) session.getAttribute("carrinho");
		
		for(String id : values) {
			for(int i = 0; i < carrinho.size(); i++) {
				if(carrinho.get(i).getId() == Integer.parseInt(id)) {
					carrinho.remove(i);
				}
			}
		}
		
		response.sendRedirect("carrinho.jsp");
	}

}
