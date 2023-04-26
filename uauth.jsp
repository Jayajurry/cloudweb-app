
<%@page import="java.sql.*"%>
<%
    String ref=request.getParameter("ref");
  Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/keyword","root","root");
    if(ref.equalsIgnoreCase("name")){
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        PreparedStatement p=con.prepareStatement("update reg set status='Authorized' where id='"+id+"' and name='"+name+"' ");
        p.executeUpdate();
        out.println("<script>"
                +"alert('Authorized Successfully..')"
                +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("Vuser.jsp");
        rd.include(request, response);
    }
   
%>