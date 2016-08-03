package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Produto;

public class ProdutoDAO {
	
	//busca determinado produto pela id para depois ser inserido no carrinho
	public Produto retornarProduto(int id) {
		Connection conn = DAO.getConexao();
		PreparedStatement ps = null;
		Produto produto = new Produto();
		
		String sql = "SELECT * FROM produto WHERE id_produto = ?";
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				produto.setId(rs.getInt("id_produto"));
				produto.setNome(rs.getString("nome"));
				produto.setQuantidade(rs.getInt("quantidade"));
				produto.setFoto(rs.getString("foto"));
				produto.setPreco(rs.getDouble("preco"));
				produto.setDescricao(rs.getString("descricao"));
				produto.setData(rs.getDate("dt_produto"));
			}
			
			ps.close();
			
		} catch (SQLException e) {
			System.out.println("Problema com codigo sql: " + sql);
			e.printStackTrace();
		} finally {
			DAO.fecharConexao();
		}
		
		return produto;
	}
	
	//cria lista de produtos em determinada ordem (ASC ou DESC)
	public ArrayList<Produto> listarProdutos(String ordem) {
		ArrayList<Produto> listaProduto = new ArrayList<Produto>();
		Connection conn = DAO.getConexao();
		PreparedStatement ps;
		
		if(ordem == null) {
			ordem = "ASC"; //caso ordem seja nulo a lista sera ordenada em ASC por padrao
		}
		
		String sql = "SELECT * FROM produto ORDER BY dt_produto " + ordem;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Produto produto = new Produto();
				
				produto.setId(rs.getInt("id_produto"));
				produto.setNome(rs.getString("nome"));
				produto.setQuantidade(rs.getInt("quantidade"));
				produto.setFoto(rs.getString("foto"));
				produto.setPreco(rs.getDouble("preco"));
				produto.setDescricao(rs.getString("descricao"));
				produto.setData(rs.getDate("dt_produto"));
				
				listaProduto.add(produto);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Erro com codigo SQL: " + sql);
		}
		
		return listaProduto;
	}
}
