package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modelo.Cliente;

public class ClienteDAO {
	
	public boolean incluir(Cliente cliente){
		Connection conexao = DAO.getConexao();
		PreparedStatement ps;
		
		String sql = "INSERT INTO cliente(username, nome, cpf, dt_nascimento, sexo, telefone, celular, email, senha, cep,"
				+ " endereco, numero, complemento, bairro, cidade, estado) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			ps = conexao.prepareStatement(sql);
			
			ps.setString(1, cliente.getUsername());
			ps.setString(2, cliente.getNome());
			ps.setString(3, cliente.getCpf());
			ps.setDate(4, new java.sql.Date(cliente.getNascimento().getTime()));
			ps.setString(5, cliente.getSexo());
			ps.setString(6, cliente.getTelefone());
			ps.setString(7, cliente.getCelular());
			ps.setString(8, cliente.getEmail());
			ps.setString(9, cliente.getSenha());
			ps.setString(10, cliente.getCep());
			ps.setString(11, cliente.getEndereco());
			ps.setString(12, cliente.getNumero());
			ps.setString(13, cliente.getComplemento());
			ps.setString(14, cliente.getBairro());
			ps.setString(15, cliente.getCidade());
			ps.setString(16, cliente.getEstado());
			
			ps.executeUpdate();
			
			ps.close();
			
			return true;
		
		} catch (SQLException e) {
			System.out.println("Erro na inclusão do registro - " + sql);
			e.printStackTrace();
			return false;
		} finally {
			DAO.fecharConexao();
		}
	}
	
	public boolean verificarCliente(String username, String senha){
		Connection conexao = DAO.getConexao();
		PreparedStatement ps;
		
		boolean result = false;
		
		String sql = "SELECT * FROM cliente WHERE username = ?  AND senha = ?";
		
		try {
			ps = conexao.prepareStatement(sql);
			
			ps.setString(1, username);
			ps.setString(2, senha);
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()){
				result = true;
			}
			
			ps.close();
		
		} catch (SQLException e) {
			System.out.println("Erro na execução da consulta - " + sql);
			//e.printStackTrace();
		} finally {
			DAO.fecharConexao();
		}
		
		return result;
	}
		
	public Cliente retornarCliente(String username) {
		Connection conexao = DAO.getConexao();
		PreparedStatement ps;
		Cliente cliente = new Cliente();
		
		String sql = "SELECT * FROM cliente WHERE username = ?";
		
		try {
			ps = conexao.prepareStatement(sql);
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				cliente.setUsername(rs.getString("username"));
				cliente.setNome(rs.getString("nome"));
				cliente.setCpf(rs.getString("cpf"));
				cliente.setSexo(rs.getString("sexo"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setCelular(rs.getString("celular"));
				cliente.setEmail(rs.getString("email"));
				cliente.setCep(rs.getString("cep"));
				cliente.setEndereco(rs.getString("endereco"));
				cliente.setNumero(rs.getString("numero"));
				cliente.setComplemento(rs.getString("complemento"));
				cliente.setBairro(rs.getString("bairro"));
				cliente.setCidade(rs.getString("cidade"));
				cliente.setEstado(rs.getString("estado"));
			}
			
			ps.close();
		
		} catch (SQLException e) {
			System.out.println("Erro na execução da consulta - " + sql);
			e.printStackTrace();
		} finally {
			DAO.fecharConexao();
		}
		
		System.out.println(cliente.getUsername());
		System.out.println(cliente.getNome());
		
		return cliente;
	}
	
	// confere se o username ja existe no banco de dados
	public boolean confereUsername(String username) {
		Connection conexao = DAO.getConexao();
		PreparedStatement ps;
		
		String sql = "SELECT * FROM cliente WHERE username = ?";
		
		try {
			ps = conexao.prepareStatement(sql);
			
			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			ps.close();
			
		} catch (SQLException e) {
			System.out.println("Erro ao executar o codigo SQL: " + sql);
			//e.printStackTrace();
		} finally {
			DAO.fecharConexao();
		}
		
		return false;
	}
	
	// confere se o email ja existe no bando de dados
	public boolean confereEmail(String email) {
		Connection conexao = DAO.getConexao();
		PreparedStatement ps;
		
		String sql = "SELECT * FROM cliente WHERE email = ?";
		
		try {
			ps = conexao.prepareStatement(sql);
			
			ps.setString(1, email);

			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			ps.close();
			
		} catch (SQLException e) {
			System.out.println("Erro ao executar o codigo SQL: " + sql);
			//e.printStackTrace();
		} finally {
			DAO.fecharConexao();
		}
		
		return false;
	}
}

