package controle;

import java.io.IOException;
import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Cliente;
import dao.ClienteDAO;



@WebServlet("/CadastraCliente")

public class CadastraCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CadastraCliente() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClienteDAO dao = new ClienteDAO();
		Cliente cliente = new Cliente();
		String url;
		
		String pattern = "dd/MM/yyyy";
		DateFormat df = new SimpleDateFormat(pattern);
				
		String dia = request.getParameter("dia");
		String mes = request.getParameter("mes");
		String ano = request.getParameter("ano");
		String data = dia + "/" + mes + "/" + ano;
		
		try{
			cliente.setNascimento((Date) df.parse(data));
		}catch (ParseException e) {
			System.out.println("Erro ao recuperar data do formulario: " + data);
			//e.printStackTrace();
		}
		
		cliente.setUsername(request.getParameter("username"));
		cliente.setNome(request.getParameter("nome"));
		cliente.setCpf(request.getParameter("cpf"));
		cliente.setSexo(request.getParameter("sexo"));
		cliente.setTelefone(request.getParameter("telefone"));
		cliente.setCelular(request.getParameter("celular"));
		cliente.setEmail(request.getParameter("email"));
		cliente.setSenha(request.getParameter("senha"));
		cliente.setCep(request.getParameter("cep"));
		cliente.setEndereco(request.getParameter("endereco"));
		cliente.setNumero(request.getParameter("numero"));
		cliente.setComplemento(request.getParameter("complemento"));
		cliente.setComplemento(request.getParameter("referencia"));
		cliente.setBairro(request.getParameter("bairro"));
		cliente.setCidade(request.getParameter("cidade"));
		cliente.setEstado(request.getParameter("estado"));
		
		if(dao.confereEmail(request.getParameter("email"))){
			url = "cadastro.jsp?alert=email";
			
			if(dao.confereUsername(cliente.getUsername())) {
				url = "cadastro.jsp?alert=all";
			}
			
		} else {
			
			if(dao.confereUsername(request.getParameter("username"))) {
				url = "cadastro.jsp?alert=username";
			} else {
				
				if(dao.incluir(cliente)) {
					url = "cadastro.jsp?alert=success";
				} else {
					url = "cadastro.jsp?alert=error";
				}
			}
		}
		
		response.sendRedirect(url);
	}

}
