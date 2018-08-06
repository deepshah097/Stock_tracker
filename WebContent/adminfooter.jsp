<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Storage space tracker</title>
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

<footer class="main-footer">
		<!-- Nested Container Starts -->
			<div class="container" >
			
			<div class="row">
			
				<div class="pull-left" id="b2t" style="padding-top:10px;">
					<a href="#top" class="btn" id="b2t">Back to Top &nbsp;<i class="fa fa-arrow-circle-up "></i></a>
				</div>
			<!-- Copyright Starts -->
				<p class="copyright text-center pull-right">
					All Rights Reserved &copy; 2018 Storage Space Tracker.
				</p>
			<!-- Copyright Ends -->
			</div>
		<!-- Nested Container Ends -->
		</footer>
	<!-- Footer Area Ends -->
	<!-- Template JS Files -->
	<!-- <script src="js/jquery-1.11.3.min.js"></script>-->
	<script src="js/jquery-migrate-1.2.1.min.js"></script>	
	<script src="js/bootstrap.min.js"></script> 
	<script src="js/plugins/bootstrap-filestyle/bootstrap-filestyle.min.js"></script>
	<script src="js/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script src="js/plugins/owl-carousel/owl.carousel.js"></script>
	<script src="js/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>	
	<!-- <script src="https://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false"></script> -->
	 <script src="js/custom.js"></script>
	 <script type="text/javascript">
	 	$(document).ready(function(){
	 		$('#b2t a').click(function(){
	 			$('body,html').animate({
	 				scrollTop:0
	 			},800);
	 			
	 		});
	 	});
	 </script>
</body>

</html>