<%@page import="Sparks_To_Idea.Project_Code.dao.StateDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.StateBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.CountryDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.CountryBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.TypeDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.TypeBean"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.RegisterBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.GenderDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.GenderBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Edit</title>
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
<%@include file="Customer_header.jsp" %>
<body>

<center> Register Detail </center>
<form action="registerUpdate" name="" id="">
<input type="hidden" name="registerId" id="registerId" value="${register.registerId}">
 
 <center>
<table border="2">

<tr>
<th>Enter First name ::</th>
<td><input type="text" name="firstName" id="firstName" value="${register.firstName}">${firstName}</td>
</tr>

<tr>
<th>Enter Last name ::</th>
<td><input type="text" name="lastName" id="lastName" value="${register.lastName}">${lastName}</td>
</tr>

<tr>
<th>Enter Contact ::</th>
<td><input type="text" name="contact" id="contact" value="${register.contact}">${contact}</td>
</tr>

<tr>
<th>Enter Address ::</th>
<td><input type="text" name="address" id="address" value="${register.address}">${address}</td>
</tr>

<tr>
<th>Enter Email ::</th>
<td><input type="text" name="email" id="email" value="${register.email}">${email}</td>
</tr>

<tr>
<th>Enter Password ::</th>
<td><input type="password" name="password" id="password" value="${register.password}">${password}</td>
</tr>

<tr>
<th>Enter Date of birth ::</th>
<td><input type="text" name="dob" id="dob" value="${register.dob}">${dob}</td>
</tr>


<tr>
<th>Enter Gender ::</th>
<td>
<select name="genderId" id="genderId">
<option value="0">---Select Gender---</option>
<%
	
	List<GenderBean>listOfGender=(ArrayList)new GenderDao().select();
    
     RegisterBean register=(RegisterBean)request.getAttribute("register");
     
	for(int i=0;i<listOfGender.size();i++)
	{
		GenderBean gender=listOfGender.get(i);
		
		if(gender.getGenderId().equals(gender.getGenderId()))
		{  
%>
<option value="<%= gender.getGenderId()%>" selected="selected"><%=gender.getGenderName()%></option>
<%}else{%>
<option value="<%= gender.getGenderId()%>"><%=gender.getGenderName() %></option>
<%}} %>
</select>
${genderId}


<th>Enter User Type ::</th>
<td>
<select name="typeId" id="typeId">
<option value="0">---Select User Type---</option>
<%
	
	List<TypeBean>listOfType=(ArrayList)new TypeDao().select();
    
	for(int i=0;i<listOfType.size();i++)
	{
		TypeBean type=listOfType.get(i);
		
		if(type.getTypeId().equals(register.getTypeId()))
		{  
%>
<option value="<%= type.getTypeId()%>" selected="selected"><%=type.getTypeName()%></option>
<%}else{%>
<option value="<%= type.getTypeId()%>"><%=type.getTypeName() %></option>
<%}} %>
</select>
${typeId}


<th>Enter State name ::</th>
<td>
<select name="stateId" id="stateId">
<option value="0">---Select state name---</option>
<%
	
	List<StateBean>listOfState=(ArrayList)new StateDao().select();
    
	for(int i=0;i<listOfState.size();i++)
	{
		StateBean state=listOfState.get(i);
		
		if(state.getStateId().equals(register.getStateId()))
		{  
%>
<option value="<%= state.getStateId()%>" selected="selected"><%=state.getStateName()%></option>
<%}else{%>
<option value="<%= state.getStateId()%>"><%=state.getStateName() %></option>
<%}} %>
</select>
${stateId}

<th>Enter Country name ::</th>
<td>
<select name="countryId" id="countryId">
<option value="0">---Select Country name---</option>
<%
	
	List<CountryBean>listOfCountry=(ArrayList)new CountryDao().select();
    
	for(int i=0;i<listOfCountry.size();i++)
	{
		CountryBean country=listOfCountry.get(i);
		
		if(country.getCountryId().equals(register.getCountryId()))
		{  
%>
<option value="<%= country.getCountryId()%>" selected="selected"><%=country.getCountryName()%></option>
<%}else{%>
<option value="<%= country.getCountryId()%>"><%=country.getCountryName() %></option>
<%}} %>
</select>
${typeId}


<td><input type="submit" value="update">
<input type="reset" value="CLEAR"></td>
</tr>


</table>
</center>
</form>

</body>
</html>