package br.edu.ifpb.cliente;

import java.util.ArrayList;
import java.util.List;


public class Cliente {
	
	public static List<Cliente> clientes = new ArrayList<Cliente>();
	private static int contadorId = 0;
	
	private int id;
	private String nome;
	private String email;
	private String telefone;
	
	private Cliente() {
	}
	
	private Cliente(int id, String nome, String email, String telefone) {
		
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
	}
	

	public static List<Cliente> getClientes() {
		return clientes;
	}

	public static void addCliente(Cliente cliente) {
		Cliente.clientes.add(cliente);
	}
	
	private static int getIdAtual() {
		return ++Cliente.contadorId;
	}

	public int getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public String getEmail() {
		return email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public static Cliente findClienteById(int id) {
		for (Cliente cliente : clientes) {
			if(cliente.getId() == id) {
				return cliente;
			}
		}
		return null;
	}
	
	public static void updateCliente(int id, String nome, String email, String telefone) {
		Cliente cliente = findClienteById(id);
		cliente.setNome(nome);
		cliente.setEmail(email);
		cliente.setTelefone(telefone);
	}
	
	public static void apagarCliente(int id) {
		for (int i = 0; i < clientes.size(); i++) {
			if(clientes.get(i).getId() == id) {
				clientes.remove(i);
			}
		}
	}


	public static class Builder {
		
		private String nome;
		private String email;
		private String telefone;
		
		
		public Builder setNome(String nome) {
			this.nome = nome;
			return this;
		}
		public Builder setEmail(String email) {
			this.email = email;
			return this;
		}
		public Builder setTelefone(String telefone) {
			this.telefone = telefone;
			return this;
		}
		private int getId() {
			return Cliente.getIdAtual();
		}
		
		public Cliente build() {
			
			return new Cliente(this.getId(), nome, email, telefone);
		}
		
	}

}
