package modelo;

import java.util.ArrayList;
import java.util.List;


public class Carrinho {
	private List<Produto> produtos = new ArrayList<Produto>();
	private Double total = 0.0;
	public List<Produto> getProdutos() {
		return produtos;
	}
	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
}