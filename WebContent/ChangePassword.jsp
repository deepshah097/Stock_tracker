<%@page import="Sparks_To_Idea.Project_Code.bean.RegisterBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<script type="text/javascript">
function checkPass() {
	var f=document.ChangePasswordServlet;
	var new1=document.getElementById("newpass").value;
	var renew=document.getElementById("reenterpass").value;
	if(new1!=renew){
		
		alert("Password not Match");
	}
	else{
		
		f.action="ChangePasswordServlet";
		f.submit();
		
	}
	
}

</script>
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

<style type="text/css">

td{
	color: white;
	font-size: 120%;
	font-weight:bolder;
	

}

</style>

</head>
<%@include file="Customer_header.jsp" %>
<body style="background-image: url('./images/security.png'); height: 615px;">



<form action="" name="ChangePasswordServlet">
<input type="hidden" name="id" id="id" value="<%=customer.getRegisterId()%>">
<center>
<br>
<br>
<br>

<table>
<tr>
<td>Enter Old Password
<td><input type="password" name="oldpass" id="oldpass">${notmatch}</td>

</tr>
<tr>
<td>Enter New Password
<td><input type="password" name="newpass" id="newpass"></td>
</tr>

<tr>
<td>Re-Enter New Password
<td><input type="password" name="reenterpass" id="reenterpass"></td>
</tr>

<tr>
<td></td>
<td><input type="button" name="ok" value="OK" onclick="checkPass();" /></td>
</tr>

</table>
</center>
</form>
</body>
</html>