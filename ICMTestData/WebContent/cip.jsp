<%-- 
    Document   : cip
    Created on : Jan 18, 2013, 6:43:21 PM
    Author     : SPINSCI
--%>

<%@ page import="java.sql.*"%>
<%
  
    String s1=request.getParameter("br");
String url = "jdbc:sqlserver://localhost:1433;databaseName=ivrmanagement";

String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String userName = "sa"; 
String password = "FGAadmin#123";
Connection c=null;
try
{
Class.forName(driver);
		
 c=DriverManager.getConnection(url,userName,password);
	   Statement s=c.createStatement();
	   ResultSet rs=s.executeQuery("select * from Test_ICM ");
	   
%>
<html xmlns="http //www.w3.org/1999/xhtml">
<head>
    <style>
        h2{
            border:solid;
            width:200px;
        }
    </style>
</head>
<body >
<a href="index.jsp">Update Values</a>
    <h1>Vxml Variable Details</h1>

        
<fieldset>
		<form name="f1" action="cip.jsp" method="post">
		<table border="1" align="left">
		<tr>
		
		<th>CALLER INPUT</th>
		<th>VXML1</th>	
		<th>VXML2</th>
		<th>VXML3</th>
                <th>VXML4</th>
                <th>DNIS</th>
		</tr>
        <%
        while(rs.next())
	   {
		   %>
    <tr>
    <td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2)%></td>
    <td><%= rs.getString(3)%></td>
    <td><%= rs.getString(4)%></td>
   
    <td><%= rs.getString(5)%></td>
    <td><%= rs.getString(7)%></td>
    
   
    </tr>
   
<%
 
	   }
	  
   }
   catch(Exception e)
   {
   c.close();
	   out.println(e);
   }
   finally
   {
	c.close();
   }
  %> 
   </table>
  </form>
</fieldset>
</body>
</html>
	