package controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClienteDAO;
import modelo.Cliente;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
	
		String username = request.getParameter("username");
		String senha = request.getParameter("senha");
		
		ClienteDAO dao = new ClienteDAO();
		Cliente cliente = new Cliente();
		
		if (dao.verificarCliente(username, senha)){
			cliente = dao.retornarCliente(username);
			session.setAttribute("cliente", cliente); //salvando o cliente(objeto) na sessao
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}
}
