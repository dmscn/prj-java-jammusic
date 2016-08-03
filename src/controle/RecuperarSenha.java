package controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;

@WebServlet("/RecuperarSenha")
public class RecuperarSenha extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RecuperarSenha() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		ClienteDAO dao = new ClienteDAO();
		
		if(dao.confereEmail(email)) {
			response.sendRedirect("esqueci_senha.jsp?alert=success");
		}
		else {
			response.sendRedirect("esqueci_senha.jsp?alert=error");
		}
	}

}
