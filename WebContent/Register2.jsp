<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

        <!-- HOME -->
        <section>
            <div class="container-alt">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="wrapper-page">

                            <div class="m-t-40 account-pages">
                                <div class="text-center account-logo-box">
                                    <h2 class="text-uppercase">
                                        <a href="index.html" class="text-success">
                                            <span>Storage Space Tracker</span>
                                        </a>
                                    </h2>
                                    <!--<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>-->
                                </div>
                                
                                <div class="account-content">
                                    <form class="form-horizontal" action="#">

                                        <div class="form-group ">
                                        
                                        <div class="col-xs-12">
                                                <input class="form-control" type="First Name" required="" placeholder="First Name">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group ">
                                            <div class="col-xs-12">
                                                <input class="form-control" type="Last Name" required="" placeholder="Last Name">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group ">
                                            <div class="col-xs-12">
                                                <input class="form-control" type="Contact No" required="" placeholder="Contact No">
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group ">
                                            <div class="col-xs-12">
                                            <textarea rows="2" cols="2" class="form-control" placeholder="Address"></textarea>
                                               
                                            </div>
                                        </div>
                                        
                                        <div class="form-group ">
                                            <div class="col-xs-12">
                                               <select id="Gender" name="Gender">
                                               <option value="">--SELECT GENDER--</option>
                                               <option value="Male">Male</option>
                                               <option value="Female">Female</option>
                                               </select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group ">
                                            <div class="col-xs-12">
                                               <select id="type" name="type">
                                               <option value="">--SELECT TYPE--</option>
                                               <option value="customer">customer</option>
                                               <option value="warehouse_manager">Warehouse Manager</option>
                                               <option value="Ship_manager">Ship Manager</option>
                                               </select>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="form-group ">
                                            <div class="col-xs-12">
                                                <input class="form-control" type="email" required="" placeholder="Email">
                                            </div>
                                        </div>

                                        

                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <input class="form-control" type="password" required="" placeholder="Password">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            
                                                <input class="form-control" type="date">
                                            
                                        </div>
                                        
                                        

                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <div class="checkbox checkbox-success">
                                                 <!--    <input id="checkbox-signup" type="checkbox" checked="checked">
                                                    <label for="checkbox-signup">I accept <a href="#">Terms and Conditions</a></label>
                                                -->
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group account-btn text-center m-t-10">
                                            <div class="col-xs-12">
                                                <button class="btn w-md btn-danger btn-bordered waves-effect waves-light" type="submit">Register</button>
                                            </div>
                                        </div>

                                    </form>

                                    <div class="clearfix"></div>

                                </div>
                            </div>
                            <!-- end card-box-->


                            <div class="row m-t-50">
                                <div class="col-sm-12 text-center">
                                    <p class="text-muted">Already have account?<a href="page-login.html" class="text-primary m-l-5"><b>Sign In</b></a></p>
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

    </body>

<!-- Mirrored from coderthemes.com/zircos_1.6/default/page-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Feb 2017 04:04:40 GMT -->
</html>