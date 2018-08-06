<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
    <meta charset="ISO-8859-1">
    <title>Admin_Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="">

    <!-- The styles -->
    <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>
    <!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation">

        <div class="navbar-inner">
            <button type="button" class="navbar-toggle pull-left animated flip">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
           <a class="navbar-brand" href="User_Insert.jsp">
           </a>
           <a class="navbar-brand" href="User_Insert.jsp"><span style="font-size: 65%">Storage Space Tracker</span></a>
                
                 

            <!-- user dropdown starts -->
            <div class="btn-group pull-right">
             
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> admin</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="logoutservlet">Logout</a></li>
                </ul>
            </div>
            <!-- user dropdown ends -->

            <!-- theme selector starts -->
            <div class="btn-group pull-right theme-container animated tada">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-tint"></i><span
                        class="hidden-sm hidden-xs"> Change Theme / Skin</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" id="themes">
                    <li><a data-value="classic" href="#"><i class="whitespace"></i> Classic</a></li>
                    <li><a data-value="cerulean" href="#"><i class="whitespace"></i> Cerulean</a></li>
                    <li><a data-value="cyborg" href="#"><i class="whitespace"></i> Cyborg</a></li>
                    <li><a data-value="simplex" href="#"><i class="whitespace"></i> Simplex</a></li>
                    <li><a data-value="darkly" href="#"><i class="whitespace"></i> Darkly</a></li>
                    <li><a data-value="lumen" href="#"><i class="whitespace"></i> Lumen</a></li>
                    <li><a data-value="slate" href="#"><i class="whitespace"></i> Slate</a></li>
                    <li><a data-value="spacelab" href="#"><i class="whitespace"></i> Spacelab</a></li>
                    <li><a data-value="united" href="#"><i class="whitespace"></i> United</a></li>
                </ul>
            </div>
            <!-- theme selector ends -->

          <!--   <ul class="collapse navbar-collapse nav navbar-nav top-menu">
                <li><a href="index.html"><i class="glyphicon glyphicon-globe"></i> Visit Site</a></li>
                
                <li>
                    <form class="navbar-search pull-left">
                        <input placeholder="Search" class="search-query form-control col-md-10" name="query"
                               type="text">
                    </form>
                </li>
            </ul>
 -->
        </div>
    </div>
    <!-- topbar ends -->
<div class="ch-container">
    <div class="row">
        
        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <!--   
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header">Main</li>
                        
                      
                        <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span> Tables</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">City</a></li>
                                <li><a href="StateList">State</a></li>
                            </ul>
                        </li>
                        
 


                        
                        
                        <li><a href="login1.html"><i class="glyphicon glyphicon-lock"></i><span> Login Page</span></a>
                        </li>
                    </ul>
                   -->
                </div>
            </div>
        </div>
        <!--/span-->
        <!-- left menu ends -->

        <noscript>
            <div class="alert alert-block col-md-12">
                <h4 class="alert-heading">Warning!</h4>

                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                    enabled to use this site.</p>
            </div>
        </noscript>

        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
                <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">Home</a>
            </li>
            <li>
                <a href="#">Tables</a>
            </li>
        </ul>
    </div>

    <div class="row">
    <div class="box col-md-12">
    <div class="box-inner">
    <div class="box-header well" data-original-title="">
        <h2><i class="glyphicon glyphicon-user"></i> Datatable </h2>

        <div class="box-icon">
            <a href="#" class="btn btn-setting btn-round btn-default"><i class="glyphicon glyphicon-cog"></i></a>
            <a href="#" class="btn btn-minimize btn-round btn-default"><i class="glyphicon glyphicon-chevron-up"></i></a>
            <a href="#" class="btn btn-close btn-round btn-default"><i class="glyphicon glyphicon-remove"></i></a>
        </div>
    </div>
    <div class="box-content">
    
    <table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
        <th>Table Name</th>
        <th>Actions</th>
    </tr>
    </thead>
    
<tbody>
    
     
    <!-- 
    
     <tr>
        <td>Visitor List</td>
        <td class="center">
            <a class="btn btn-success" href="Visitor_List_Servlet">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
     
   
    <tr>
        <td>Favourable</td>
        <td class="center">
            <a class="btn btn-success" href="Favourable_List_Servlet">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    
    <tr>
        <td>Unfavourable</td>
        <td class="center">
            <a class="btn btn-success" href="Unfavourable_List_Servlet">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    
    
     <tr>
        <td>Comment</td>
        <td class="center">
            <a class="btn btn-success" href="Comment_List_Servlet">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
   
    -->
    
    <tr>
        <td>User</td>
        <td class="center">
            <a class="btn btn-success" href="registerList">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    
    
    <!--   
    
     <tr>
        <td>Blog</td>
        <td class="center">
            <a class="btn btn-success" href="Blog_list_servlet">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    
    
    
    <tr>
        <td>Advertise</td>
        <td class="center">
            <a class="btn btn-success" href="advertise_list_servlet">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    
    
    <tr>
        <td>chat</td>
        <td class="center">
            <a class="btn btn-success" href="Chat_List_servlet">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    
    
    
     <tr>
        <td>City</td>
        <td class="center">
            <a class="btn btn-success" href="cityList">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    

    -->

		<tr>
        <td>Country</td>
        <td class="center">
            <a class="btn btn-success" href="countryList">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
            
        </td>
    </tr>
    
    	<tr>
        <td>UserType</td>
        
        <td class="center">
            <a class="btn btn-success" href="typeList">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                Open
            </a>
           
        </td>
    </tr>
   
   
     
    
    <tr>
        <td>Gender</td>
        
        <td class="center">
            <a class="btn btn-success" href="genderList">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
               open
            </a>
           
        </td>
    </tr>
    
    
   
    
        <tr>
        <td>State</td>
        
        <td class="center">
            <a class="btn btn-success" href="stateList">
                <i class="glyphicon glyphicon-zoom-in icon-white"></i>
               open
            </a>
           
        </td>
    </tr>
    
   




   
   
    
      
    </tbody>
    </table>
    </div>
    </div>
    </div>
    <!--/span-->

    </div><!--/row-->

    
    </div><!--/row-->

   
                </div>
            </div>
        </div>
    </div><!--/span-->

    <!-- content ends -->
    </div><!--/#content.col-md-0-->
</div><!--/fluid-row-->

    <!-- Ad, you can remove it -->
    <!-- 
    <div class="row">
        <div class="col-md-9 col-lg-9 col-xs-9  hidden-xs">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- Charisma Demo 2 
            <ins class="adsbygoogle"
                 style="display:inline-block;width:728px;height:90px"
                 data-ad-client="ca-pub-5108790028230107"
                 data-ad-slot="3193373905"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
       

    </div>
     -->
    <!-- Ad ends -->

    <hr>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3>Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here settings can be configured...</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                    <a href="#" class="btn btn-primary" data-dismiss="modal">Save changes</a>
                </div>
            </div>
        </div>
    </div>

 <!--     <footer class="row">
        <p class="col-md-9 col-sm-9 col-xs-12 copyright">&copy; <a href="http://usman.it" target="_blank"></a> 2016 - 2017</p>

        <p class="col-md-3 col-sm-3 col-xs-12 powered-by">Powered by: <a
                href="http://usman.it/free-responsive-admin-template">Social Influence</a></p>
    </footer>
-->

</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>

<%@include file="my-footer.jsp" %>
</html>
