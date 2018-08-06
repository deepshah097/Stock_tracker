<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<body>

<form action="genderInsert" name="genderInsert" id="genderInsert" >
<center>
<table border="3">
<tr>

<th>Enter Gender type</th>

<td><input type="text" name="genderName" id="genderName" value="${gender.genderName}">${genderName}</td>
</tr>
<tr>
<td></td>
<td>
<input type="submit" id="btnSubmit" name="btnSubmit" value="submit">
<input type="reset" id="btnReset" name="btnReset">
</td>
</tr>
</table>
</center>
</form>


</body>
</html>