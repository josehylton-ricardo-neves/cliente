package br.edu.ifpb.cliente.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifpb.cliente.Cliente;


@WebServlet("/ListaCliente")
public class ListarClienteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       

    public ListarClienteServlet() {
        super();
    }


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher("/listar-clientes.jsp");
		req.setAttribute("listaClientes", Cliente.getClientes());
		rd.forward(req, res);
	}

}
