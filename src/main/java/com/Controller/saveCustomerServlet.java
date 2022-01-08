package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entity.Customer;
import com.Helper.FactoryProvider;


@WebServlet("/saveCustomerServlet")
public class saveCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public saveCustomerServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cName=request.getParameter("cName");
		String branchId=request.getParameter("branchId");
		
		Customer c=new Customer(cName,branchId);
		
		try {
			Session sess=FactoryProvider.getFactory().openSession();
			Transaction tx=sess.beginTransaction();
			sess.save(c);
			tx.commit();
			sess.close();
			
		}catch(HibernateException e) {
			System.out.println(e.getMessage());
		}
	}

}
