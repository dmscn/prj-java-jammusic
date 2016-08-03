package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import modelo.Contato;

public class ContatoDAO {
	public boolean incluir(Contato contato){
		Connection conexao = DAO.getConexao();
		PreparedStatement ps;
		
		String SQL = "INSERT INTO contato(nome, email, telefone, texto) VALUES (?, ?, ?, ?)";
		
		try {
			ps = conexao.prepareStatement(SQL);
			
			ps.setString(1, contato.getNome());
			ps.setString(2, contato.getEmail());
			ps.setString(3, contato.getTelefone());
			ps.setString(4, contato.getTexto());
			
			ps.executeUpdate();
			
			ps.close();
			
			return true;
		} catch (SQLException e) {
			System.out.println("Erro na inclusão do registro - " + SQL);
			//e.printStackTrace();
			return false;
		} finally {
			DAO.fecharConexao();
		}
	}
}
