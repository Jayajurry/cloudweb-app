<%@page import="java.sql.*"%>
<%

          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/keyword","root","root");
   PreparedStatement ps=con.prepareStatement("Select * from userreq  Where status='Accept'");
   System.out.println(ps);
   ps.executeQuery();

   out.println("<script>"); 			
   out.println("alert(\"Accept File Request\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Search.jsp");  
        rd.include(request, response);  
  

%>
