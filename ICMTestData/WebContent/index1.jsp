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
        <script LANGUAGE="JavaScript" type="text/javascript">
<!--
function f1_check1(theForm)
{

  
  if (theForm.br.value == "")
  {
    alert("You must enter Department ");
    theForm.br.focus();
    return (false);
  }
}
  </script>
        <h1>The values Updated Successfully</h1>
        
      <form name="f1" action="cip.jsp" method="post"  onSubmit="return f1_check1(this);">
         
          <p>To View the values please enter callerinput</p>
		<table border="0" align="left">
		<tr>
		
		<td><input type="submit" name="send"  value="VIEWDETAILS" /></td>
</tr>		
		</table>
    </form>

    </body>
</html>
