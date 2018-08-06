<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.GenderBean"%>
<%@page import="java.util.List"%>
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
<style type="text/css">
body
{
	
		background-color: rgba(0,0,0,0.4);
	font-size:20px;
}
.font{

font-size: 130%;
color:dark-blue;
text-decoration:none;
}
table {
    border-collapse: collapse;
	width:100%;
}
th
{
    padding: 15px;
    text-align: left;
    font-size:150%;
    
    border-bottom: 1px solid #ddd;
 	background-color:#DFC39F;
}
td {
    <!--padding: 15px;-->
    text-align: left;
    font-size:150%;
    color:white;
    border-bottom: 1px solid #ddd;
}
tr:hover {background-color: #8B9DC3}

 button
  {
   background-color: #4CAF50; /* Green */
   size:500%;
    border: none;
    color: white;
    padding: 8px 35px;
	text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
  border-radius:12px;
 }
 .button4 {
    background-color: rgba(240, 195, 11, 0.32);
    border: 2px solid green;
    font-size: 150%;
    border-bottom-style: outset;
}

.button4:hover {background-color: #e7e7e7;}

</style>


</head>
<body>


<form action="genderUpdate" name="genderlist" id="genderlist">
<input type="hidden" name="genderId" id="genderId">
<center>
<table border="3">


<%
List<GenderBean>genderlist=(ArrayList)request.getAttribute("listOfGender");

if(genderlist !=null){%>

<tr>

<th>GENDER ID</th>
<th>GENDER NAME</th>

</tr>


<% 
	for(int i=0;i<genderlist.size();i++){
			GenderBean gender = genderlist.get(i);
%>

<tr>

  <td><%=gender.getGenderId() %></td> 
<td><%=gender.getGenderName() %></td>

<td>
<a href="genderEdit?genderId=<%=gender.getGenderId() %>">EDIT</a>
<a href="genderDelete?genderId=<%=gender.getGenderId() %>">DELETE</a>
</td>

</tr>

<%}}%>

</table>
</center>
</form>


</body>
</html>