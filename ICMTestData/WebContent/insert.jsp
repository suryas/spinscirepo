<%--
    Document   : insert
    Created on : Jan 18, 2013, 5:05:26 PM
    Author     : SPINSCI
--%>

<%@page import="java.sql.*"%>
<%
String s1=request.getParameter("cip");
                 String s2=request.getParameter("vxml1");
	String s3=request.getParameter("vxml2");
                 String s4=request.getParameter("vxml3");
	String s5=request.getParameter("vxml4");
	String dnis=request.getParameter("dnis");
      String type=        request.getParameter("type");
    String url = "jdbc:sqlserver://localhost:1433;databaseName=ivrmanagement";
  int id=1;
  String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
  String userName = "sa"; 
  String password = "FGAadmin#123";
  Connection c=null;
try
{
Class.forName(driver);
		
 c=DriverManager.getConnection(url,userName,password);
Statement st=c.createStatement();
String statement = "";
	statement = "UPDATE Test_ICM SET EXTVxml0='"+s2+"',EXTVxml1='"+s3+"',EXTVxml2='"+s4+"',EXTVxml3='"+s5+"' where dnis='"+dnis+"'";
	
/*}

if(type.equals("new"))
{
	statement = "INSERT INTO Test_ICM(id,callerInput,EXTVxml0,EXTVxml1,EXTVxml2,EXTVxml3,dnis) values("+id+",'"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+dnis+"')";
}*/
int i=st.executeUpdate(statement);
if(i==1)
	response.sendRedirect("index1.jsp");
	else
	response.sendRedirect("indexerror.jsp");
       
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
