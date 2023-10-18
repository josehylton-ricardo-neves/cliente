package br.edu.ifpb.cliente.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifpb.cliente.Cliente;


@WebServlet("/AtualizarCliente")
public class AtualizarClienteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       

    public AtualizarClienteServlet() {
        super();
    }

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		Cliente.updateCliente(Integer.valueOf(req.getParameter("id")), 
							  req.getParameter("nome"), 
							  req.getParameter("email"), 
							  req.getParameter("telefone"));
		
		res.sendRedirect("ListaCliente");
	}

}
