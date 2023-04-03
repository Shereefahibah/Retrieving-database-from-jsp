<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
 <%
 try
 {
	 Class.forName("org.postgresql.Driver");
	 Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/new","postgres","hibah");
	 String sql="select* from EMPLOYEE";
	 PreparedStatement stmt=con.prepareStatement(sql);
	 ResultSet rs=stmt.executeQuery();
	 if(rs.next()==false)
	 {
		out.println("no records of employees");
		 
	 }
	 else
	 {
		 
		 
		 %>
		 
		 <table border="1">
		 
		 <tr>
		 <th>Employee ID</th>
		  <th>Employee Name</th>
		  </tr>
		  
		  <%
		do
		{
		  %>
		 <tr>
		 <td><%=rs.getString("empid") %></td>
		 <td><%=rs.getString("empname") %></td>
		 
		 </tr>
		<%
		}
		 while(rs.next()); %> 
		 
		 
		 
		 </table>
		 <% 
	 }
	 
	 
	 
 
 
 
 }
 
 catch(Exception e)
 {
	 e.printStackTrace();
	 
 }
 
 %>
    
  
</body>
</html>