
<%@page import="java.sql.*"%>
<%
    try{
        
        
   String id=session.getAttribute("id").toString();
   String user=session.getAttribute("name").toString();
   System.out.println(id+" "+user);
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/keyword","root","root");
    PreparedStatement ps=con.prepareStatement("insert into userreq(id,user)values ('"+id+"','"+user+"')");
    System.out.println(ps);
    ps.executeUpdate();
   
   
   out.println("<script>"); 			
        out.println("alert(\"Request Send to Confirmer Successfully\")");
        out.println("</script>");RequestDispatcher rd=request.getRequestDispatcher("/Searchreq.jsp");  
        rd.include(request, response);  

 
            
    }   catch(Exception e){
        out.println("<script>"); 			
        out.println("alert(\"Please Try Again..\")");
        out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Searchreq.jsp");  
        rd.include(request, response);  

        
    }
    %>