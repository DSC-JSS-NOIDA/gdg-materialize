package org.gdgjss.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gdgjss.model.HibernateUtil;
import org.gdgjss.model.Responses;
import org.hibernate.Session;



public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        	response.setContentType("text/html;charset=UTF-8");
          
  	      String name=request.getParameter("name");
  	      String email=request.getParameter("email");
  	      String institute=request.getParameter("institute");
  	      String trade=request.getParameter("trade");
  	      String year=request.getParameter("year");
  	      int eval1=Integer.parseInt(request.getParameter("eval1"));
  	      int eval2=Integer.parseInt(request.getParameter("eval2"));
  	      int eval3=Integer.parseInt(request.getParameter("eval3"));
  	      int eval4=Integer.parseInt(request.getParameter("eval4"));
  	      String ques1=request.getParameter("ques1");
  	      String ques2=request.getParameter("ques2");
  	      String ques3=request.getParameter("ques3");
  	      String suggestion=request.getParameter("suggestion");
  	      String event1=request.getParameter("event1");
  	 
		  Session s=HibernateUtil.getSessionFactory().openSession();
		  s.beginTransaction();
      
            Responses e=new Responses();
            e.setName(name);
            e.setEmail(email);
            e.setInstitute(institute);
            e.setTrade(trade);
            e.setYear(year);
            e.setEval1(eval1);
            e.setEval2(eval2);
            e.setEval3(eval3);
            e.setEval4(eval4);
            e.setQues1(ques1);
            e.setQues2(ques2);
            e.setQues3(ques3);
            e.setSuggestion(suggestion);
            e.setEvent(event1);
           // e.setId(11); under observations.
            s.save(e);
            s.getTransaction().commit();
    	    s.close();
    	
    	  
            response.sendRedirect("response.jsp");
    }

    
    

    
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


