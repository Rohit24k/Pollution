package com.Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.Helper.FactoryProvider;
import com.Entity.PollutionData;


@WebServlet("/SaveServlet")
public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveServlet() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Co2=request.getParameter("co2");
		String Humid=request.getParameter("humidity");
		String pm2=request.getParameter("pm2");
		String temp=request.getParameter("temperature");
		Date addedDate=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date=sdf.format(addedDate);
System.out.println(date);
		PollutionData pd=new PollutionData(Co2,Humid,temp,pm2,date);
//		System.out.println("Here");
		try {
			Session sess=FactoryProvider.getFactory().openSession();
			Transaction tx= sess.beginTransaction();
			 sess.save(pd);
//			 System.out.println("Not Saved");
			tx.commit();
			
			System.out.println("Saved");
			sess.close();
		}catch(HibernateException e) {
			System.out.println(e.getMessage());
	
		}
		response.sendRedirect("Customer.jsp");
		
	}
	}


