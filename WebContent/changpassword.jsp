<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./layout/styles/w3.css">
<link rel="stylesheet" href="./layout/styles/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="./layout/styles/font-awesome.min.css">
<script type="text/javascript">

window.addEventListener( "pageshow", function ( event ) {
	  var historyTraversal = event.persisted || 
	                         ( typeof window.performance != "undefined" && 
	                              window.performance.navigation.type === 2 );
	  if ( historyTraversal ) {
	    // Handle page restore.
	    window.location.reload();
	  }
	});
	
	

</script>
</head>
<style>
body
{
   background-image:url("./images/1.jpg");
   background-size:1400px 700px;
   background-repeat:no-repeat;
	background-color:rgba(0,0,0,0.4);
}

h4
{
  font-size:30px;
  color:#c6cd32;
}
</style>
<body>
<div style="height: 30%; position:absolute;top:150px;left:500px">
<form action="PassUpdateServlet">


<table align="center">
<tr>
<td><h4>Enter new password:</h4></td>
<td><input type="password" name="newpass" id="newpass"></td>
</tr>


<tr>
<td>
<td><h4><input type="submit" name="btnsub" value="OK" class="w3-button w3-theme"></h4></td>
</table>


</form>
</body>

</html>