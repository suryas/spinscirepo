<%-- 
    Document   : cip
    Created on : Jan 18, 2013, 6:43:21 PM
    Author     : SPINSCI
--%>

<%@ page import="java.sql.*"%>
<%
  
    String value=request.getParameter("skill");
	if( value==null)
	{
		out.println("Please the pass the value skillgroup into URL like SkillGroup.jsp?skill=value");
	}
	else
	{
String url = "jdbc:sqlserver://10.157.42.107:1433;databaseName=fga_awdb";

String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String userName = "sa"; 
String password = "FGAadmin#123";
Connection c=null;
try
{
Class.forName(driver);
		
 c=DriverManager.getConnection(url,userName,password);
	   Statement s=c.createStatement();
	   ResultSet rs=s.executeQuery("SELECT   Skill_Group.EnterpriseName,   RouterCallsQNow = ISNULL(Skill_Group_Real_Time.RouterCallsQNow, 0)  FROM "+
	"Skill_Group_Real_Time,   "+
  	"Skill_Group "+
"WHERE  Skill_Group_Real_Time.SkillTargetID = Skill_Group.SkillTargetID and Skill_Group.EnterpriseName like '"+value+"%'" );
	
	   
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
    <h1>Skill Group Route</h1>

        
<fieldset>
		<form name="f1" action="cip.jsp" method="post">
		<table border="1" align="left">
		<tr>
		
		<th>SkillGroup</th>
		<th>CallRoute</th>	
		
		</tr>
        <%
        while(rs.next())
	   {
		   %>
    <tr>
    <td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2)%></td>
   
    
   
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
   }
  %> 
   </table>
  </form>
</fieldset>
</body>
</html>
	