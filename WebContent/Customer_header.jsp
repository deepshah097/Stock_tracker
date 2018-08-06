<%@page import="Sparks_To_Idea.Project_Code.dao.AdminDashDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.RegisterBean"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.ItemDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Index</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta charset="utf-8" />
	<meta name="keywords" content="Attainment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script> 
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
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
	<!-- //for-mobile-apps -->
	 <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<!--banner slider  -->
	<link href="css/JiSlider.css" rel="stylesheet">
	<!-- //banner-slider -->
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="http://fonts.googleapis.com/css?family=Oswald:400,500,600,700" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

</head>


<body>
<script src='../../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src="../../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
  	}
})();
</script>
<script>
(function(){
if(typeof _bsa !== 'undefined' && _bsa) {
	// format, zoneKey, segment:value, options
	_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
}
})();
</script>
<script>
(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
  		// format, zoneKey, segment:value, options
  		_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
  	}
})();
</script><script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../../../../../www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-30027142-1', 'w3layouts.com');
  ga('send', 'pageview');
</script>


<body>
<%
RegisterBean customer=(RegisterBean)session.getAttribute("customer");

if(customer !=null)
{
	
	System.out.print("IF");
	
	
	
}else{
	System.out.println("ELSE");
	request.getRequestDispatcher("Login.jsp").forward(request,
			response);
	
}
%>

<!-- header -->
	<section class="w3layouts-header py-2" style="width:100%;">
		<div class="container">
			  <!-- header -->
        <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
                    <h4>
                        <a class="navbar-brand" href="#">
                          Storage space tracker   
                        </a>
                    </h4>
                    
                    <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-lg-auto text-center">
                        
                        <%
                        if(customer.getTypeId().equals("1")){
                        	%>
                        	<li class="nav-item  mr-3">
                                <a class="nav-link" href="CustomerIndexOnlyList" style="color: white; font-size: 16px; font-family:aria;">Home</a>
                            </li>
                        
                        <%
                        }
                        %>
                        
                        
                        <%
                        if(customer.getTypeId().equals("2")){
                        	%>
                        	<li class="nav-item  mr-3">
                                <a class="nav-link" href="warehouse_main.jsp" style="color: white; font-size: 15px; font-family:sans-serif;">Home</a>
                            </li>
                        
                        <%
                        }
                        %>
                        
                        
                        <%
                        if(customer.getTypeId().equals("3")){
                        	%>
                        	<li class="nav-item  mr-3">
                                <a class="nav-link" href="Shipmanager_main.jsp" style="color: white; font-size: 15px; font-family:sans-serif;">Home</a>
                            </li>
                        
                        <%
                        }
                        %>
                        
                        
                        
                        
                        
                        <%
                        if(customer.getTypeId().equals("1")||customer.getTypeId().equals("2")||customer.getTypeId().equals("3")){
                        	 %>
                            <li class="nav-item mr-3">
                                <a class="nav-link" href="registerEdit?registerId=<%=customer.getRegisterId()%>" style="color: white; font-family:sans-serif; font-size: 15px;">Update Profile
                                    
                                </a>
                            </li>
                            <li class="nav-item  mr-3">
                                <a class="nav-link" href="ChangePassword.jsp" style="color: white; font-size: 15px; font-family:sans-serif;">Change Password</a>
                            </li>
                            
                            
                            <%
                        }
                        if(customer.getTypeId().equals("1")){
                        	
                        	
                        
                        
                        %>
							 <li class="nav-item  mr-3">
                                <a class="nav-link" href="CustomerViewOrderServlet2?customerId=<%=customer.getRegisterId()%>"><img alt="" src="./images/cart.png" style="width: 25px; height: 25px;">
                                <%
                                int cnt=new AdminDashDao().itemordercnt(customer.getRegisterId());
                                if(cnt>0){
                                %>
                                
                                <span style=" font-size: 12px;
    								display: inline-block;
										    vertical-align: middle;
										    color: #fff;
										    border-radius: 50% !important;
										    width: 15px;
										    height: 30px;
										    font-size:15px;
										    text-align: center;
										    line-height: 24px;
										    padding-left: 0px;">
										    <%=cnt%>
								</span>
                                <%	
                                }
                        
                                
                                %></a>
                            </li>
                            <%
                        }
                            if(customer.getTypeId().equals("2")){
                            	
                            
                            %>
                            <li class="nav-item mr-3">
                                <a class="nav-link" href="WarehouseViewCustomerServlet" style="color: white; font-size: 15px; font-family:sans-serif;">View Customer</a>
                            </li>
                          <%
                            }
                            if(customer.getTypeId().equals("3")){
                            	
                                
                   
                          %> 
                          
                                <li class="nav-item mr-3">
                                    <a class="nav-link" href="ShipViewCustomerServlet" style="font-size: 15px; color: white; font-family:sans-serif;">View Customer</a>
                                </li>
                                
                                <%
                  
                           }
                            if(customer.getTypeId().equals("1")||customer.getTypeId().equals("2")||customer.getTypeId().equals("3")){
                            
                            	 %>
                            <li class="nav-item mr-3">
                                <a class="nav-link" href="logoutservlet" style="color: white; font-size: 15px; font-family:sans-serif;">Logout</a>
                            </li>
                            <%
                            }
                            %>
                        </ul>
                    </div>
                </nav>
        </header>
        <!-- //header -->
		</div>
	</section>
	
	<!-- //header -->
	<!-- banner --></body>
</html>