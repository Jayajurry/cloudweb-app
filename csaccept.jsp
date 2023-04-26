<%@page import="java.sql.*"%>
<%
  String id=request.getParameter("id");
  String user=request.getParameter("user");
          
    Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/keyword","root","root");
   PreparedStatement ps=con.prepareStatement("Update userreq SET status1='Accept' Where id='"+id+"' ");
   System.out.println(ps);
   ps.executeUpdate();

   out.println("<script>"); 			
   out.println("alert(\"Search File Request Accepted Successfully\")");
   out.println("</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/Key_Home.jsp");  
        rd.include(request, response);  
  

%>
