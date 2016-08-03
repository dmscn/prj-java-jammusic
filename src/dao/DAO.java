package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
	public static String status = "Desconectado...";
	
	public static Connection getConexao(){
		Connection conexao = null;
		
		String driverName = "com.mysql.jdbc.Driver";
		
		try {
			Class.forName(driverName);
			
			String serverName = "127.0.0.1:3306";
			String dataBase = "jam";
			String url = "jdbc:mysql://" + serverName + "/" + dataBase + "?autoReconnect=true&useSSL=false"; //interrompe os problemas de SSL
			String user = "root";
			String password = "toor";
			
			conexao = DriverManager.getConnection(url, user, password);
			
			if (conexao != null){
				status = "STATUS --> conectado com sucesso!";
			} else {
				status = "STATUS --> não foi possível realizar a conexão";
			}
			
			return conexao;
			
		} catch (ClassNotFoundException e) {
			System.out.println("O driver especificado não foi encontrado");
			//e.printStackTrace();
			return null;
		} catch (SQLException e){
			System.out.println("Não foi possível conectar ao banco de dados");
			//e.printStackTrace();
			return null;
		}
		
	}
	
	public static String statusConexao(){
		return status;
	}
	
	public static boolean fecharConexao(){
		try {
			DAO.getConexao().close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static Connection reiniciarConexao(){
		fecharConexao();
		
		return getConexao();
	}
}
