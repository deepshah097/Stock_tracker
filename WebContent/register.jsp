<%@page import="Sparks_To_Idea.Project_Code.dao.CountryDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.CountryBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.StateDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.StateBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.TypeDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.TypeBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.GenderDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.GenderBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.RegisterBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App title -->
        <title>Register Page</title>

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="assets/js/modernizr.min.js"></script>
<script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-83057131-1', 'auto');
          ga('send', 'pageview');

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

</head>
<body class="bg-transparent">
<div style="background-image:url('./images/warehouse-background.jpg;'); height: 100%;">

<section>
            <div class="container-alt">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="wrapper-page">

                            <div class="m-t-40 account-pages">
                                <div class="text-center account-logo-box">
                                    <h2 class="text-uppercase">
                                        <a href="#" class="text-success">
                                            <span>Storage Space Tracker</span>
                                        </a>
                                    </h2>
                                    <!--<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>-->
                                </div>
                                
                                <div class="account-content">
                                
<form action="registerInsert" name="registerInsert" id="registerInsert">
<br>
<div class="form-group ">
	<div class="col-xs-12">
	Enter first name ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="firstName" id="firstName" value="${register.firstName}">${firstName}
	</div>
</div>
<br>
<div class="form-group ">
	<div class="col-xs-12">
		Enter Last name ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="lastName" id="lastName" value="${register.lastName}">${lastName}
	</div>
</div>
<br>
<div class="form-group ">
	<div class="col-xs-12">
		Enter Contact ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="contact" id="contact" value="${register.contact}">${contact}
	</div>
</div>
<br>

<div class="form-group ">
	<div class="col-xs-12">
		Enter Address ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="address" id="address" value="${register.address}">${address}
	</div>
</div>
<br>

<div class="form-group ">
	<div class="col-xs-12">
		Enter Email ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="email" id="email" value="${register.email}">${email}
	</div>
</div>
<br>
<div class="form-group ">
	<div class="col-xs-12">
		Enter Password ::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="password" name="password" id="password" value="${register.password}">${password}
	</div>
</div>

<br>
<div class="form-group ">
	<div class="col-xs-12">
		Enter DOB:: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="date" name="dob" id="dob" value="${register.dob}">${dob}
	</div>
</div>

<br>
<div class="form-group ">
	<div class="col-xs-12">
Enter Gender ::
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="genderId" id="genderId" >
<option value="0">----Select Gender-----</option>
<% 

    
    List<GenderBean>listOfGender=(ArrayList)new GenderDao().select();
    
	for(int i=0;i<listOfGender.size();i++)
	{
		GenderBean gender=listOfGender.get(i);
	
%>

<option value="<%= gender.getGenderId()%>"><%=gender.getGenderName() %></option> 
<% } %>
</select>${genderName}
</div>
</div>

<br>
<div class="form-group ">
	<div class="col-xs-12">
Enter Type ::
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="typeId" id="typeId" >
<option value="0">----Select User Type-----</option>
<% 

    
    List<TypeBean>listOfType=(ArrayList)new TypeDao().select();
    
    
	for(int i=0;i<listOfType.size();i++)
	{
			TypeBean type=listOfType.get(i);
	
%>

<option value="<%= type.getTypeId()%>"><%=type.getTypeName() %></option> 
<% } %>
</select>${typeName}
</div>
</div>

<br>
<div class="form-group ">
	<div class="col-xs-12">
Enter State ::
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="stateId" id="stateId" >
<option value="0">----Select State-----</option>
<% 

    
    List<StateBean>listOfState=(ArrayList)new StateDao().select();
    
    
	for(int i=0;i<listOfState.size();i++)
	{
			StateBean state=listOfState.get(i);
	
%>

<option value="<%= state.getStateId()%>"><%=state.getStateName() %></option> 
<% } %>
</select>${stateName}
</div>
</div>

<br>
<div class="form-group ">
	<div class="col-xs-12">
Enter Country ::
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="countryId" id="countryId" >
<option value="0">----Select Country-----</option>
<% 

    
    List<CountryBean>listOfCountry=(ArrayList)new CountryDao().select();
    
    
	for(int i=0;i<listOfCountry.size();i++)
	{
			CountryBean country=listOfCountry.get(i);
	
%>

<option value="<%= country.getCountryId()%>"><%=country.getCountryName() %></option> 
<% } %>
</select>${countryName}
</div>

</div>
&nbsp;

										
                                        <center>
                                              <br>
                                                <button class="btn w-md btn-danger btn-bordered waves-effect waves-light" type="submit">Register</button>
                                            
										</center>
                                    </form>

                                    <div class="clearfix"></div>

                                </div>
                            </div>
                            <!-- end card-box-->


                            <div class="row m-t-50">
                                <div class="col-sm-12 text-center">
                                    <p class="text-muted">Already have account?<a href="Login.jsp" class="text-primary m-l-5"><b>Sign In</b></a></p>
                                </div>
                            </div>

                        </div>
                        <!-- end wrapper -->

                    </div>
                </div>
            </div>
          </section>
          <!-- END HOME -->

        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
</div>
</body>
</html>