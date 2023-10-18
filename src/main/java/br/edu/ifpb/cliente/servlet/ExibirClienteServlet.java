package br.edu.ifpb.cliente.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifpb.cliente.Cliente;


@WebServlet("/ExibirCliente")
public class ExibirClienteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	
    public ExibirClienteServlet() {
        super();
    }


	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		if(Cliente.findClienteById(Integer.valueOf(req.getParameter("id"))) == null) {
			throw new RuntimeException("id do cliente invalido");
		}
		
		req.setAttribute("cliente", Cliente.findClienteById(Integer.valueOf(req.getParameter("id"))));
		
		RequestDispatcher rd = req.getRequestDispatcher("/atualizar-cliente.jsp");
		rd.forward(req, res);
	}

}
