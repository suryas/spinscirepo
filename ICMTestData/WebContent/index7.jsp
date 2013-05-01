<%-- 
    Document   : index
    Created on : Jan 18, 2013, 4:55:01 PM
    Author     : SPINSCI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        
     <form action="insert.jsp" name="simpleForm" onsubmit="return(validate());" method="post">

<fieldset>
   <table width="657" height="402" border="0" align="center">
<tr>
<td colspan="3" align="center"><h3><font color="#0033FF">EXT_VXML Details</font></h3></td>
</tr>
<tr>
<td><label>CALLER INPUT</label></td>
<td width="193"><input type="text" name="cip" required="" /></td>
<tr>
<td><label>EXT_VXML1</label></td>
<td>
<input type="text" name="vxml1" required=""/></td>
</tr>
<tr>
<td><label>EXT_VXML1</label></td>
<td>
<input type="text" name="vxml2" required=""/></td>
</tr>
<tr>
<td><label>EXT_VXML1</label></td>
<td>
<input type="text" name="vxml3" required=""/></td>
</tr>
<tr>
<td><label>EXT_VXML1</label></td>
<td>
<input type="text" name="vxml4" required=""/></td>
</tr></table>
<input  type="submit" name="submit" value="Update" />
<input type="reset" name="reset" value="Reset"/>
    </body>
</html>
