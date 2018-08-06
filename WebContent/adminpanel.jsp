<%@page import="Sparks_To_Idea.Project_Code.dao.AdminDashDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Storage space tracker Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style1.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
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
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a  href="#"><label style="color: white;">STORAGE SPACE TRACKER</label></a>
        <a class="navbar-brand brand-logo-mini" href="#"><img src="images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="mdi mdi-menu"></span>
        </button>
        <span class="d-none d-md-inline">Admin Dashboard</span>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile">
            <a class="nav-link">
              <div class="nav-profile-text">
                <p class="mb-0">Ankit Soni</p>
              </div>
              <div class="nav-profile-img">
                <img src="images/faces/face7.jpg" alt="image">
              </div>
            </a>
          </li>
         
          <li class="nav-item nav-logout d-none d-lg-block">
            <a class="nav-link" href="logoutservlet">
              Logout
              <i class="mdi mdi-power"></i>
            </a>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
     <div class="container-fluid page-body-wrapper">
    <!--   partial:partials/_settings-panel.html -->
      <div id="settings-trigger"><i class="mdi mdi-format-color-fill"></i></div>
      <div id="theme-settings" class="settings-panel">
        <i class="settings-close mdi mdi-close"></i>
        <p class="settings-heading">SIDEBAR SKINS</p>
        <div class="sidebar-bg-options selected" id="sidebar-default-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Default</div>
        <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
        <p class="settings-heading mt-2">HEADER SKINS</p>
        <div class="color-tiles mx-0 px-4">
          <div class="tiles primary"></div>
          <div class="tiles success"></div>
          <div class="tiles warning"></div>
          <div class="tiles danger"></div>
          <div class="tiles info"></div>
          <div class="tiles dark"></div>
          <div class="tiles default light"></div>
        </div>
      </div> 
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
        
         
          
          <li class="nav-item">
            <a class="nav-link" href="adminpanel.jsp">
              <i class="mdi mdi-home-outline menu-icon"></i>              
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
  
          <li class="nav-item">
            <a class="nav-link" href="registerList">
              <i class="mdi mdi-table menu-icon"></i>              
              <span class="menu-title">Manage Customer</span>              
            </a>
          </li>   
          
          <li class="nav-item">
            <a class="nav-link" href="countryList">
              <i class="mdi mdi-table menu-icon"></i>              
              <span class="menu-title">Manage Country</span>              
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="stateList">
              <i class="mdi mdi-table menu-icon"></i>              
              <span class="menu-title">Manage State</span>              
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="typeList">
              <i class="mdi mdi-table menu-icon"></i>              
              <span class="menu-title">Manage RoleType</span>              
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="itemList">
              <i class="mdi mdi-table menu-icon"></i>              
              <span class="menu-title">Manage Item</span>              
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="itemorderList">
              <i class="mdi mdi-table menu-icon"></i>              
              <span class="menu-title">Manage Order</span>              
            </a>
          </li>
 
          <li class="nav-item sidebar-actions">
            <a class="nav-link" href="#">
              <i class="mdi mdi-circle-outline menu-icon text-danger"></i>
              Settings
            </a>
            <a class="nav-link" href="#">
              <i class="mdi mdi-circle-outline menu-icon text-danger"></i>
              Contact Support
            </a>
            <span class="nav-link">
              &copy; 2018 Storage Space Tracker.
            </span>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Dashboard
             <!--  <span class="ml-2 h6 font-weight-normal">Do big things with Gleam, the responsive bootstrap 4 admin template.</span> -->
            </h3>
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
              </ol>
            </nav>
          </div>
          <div class="row">
            <div class="col-md-4 stretch-card grid-margin">
              <div class="card bg-gradient-danger border-0 text-white p-3">
                <div class="card-body">
                  <div class="d-flex align-items-start">
                    <div class="ml-4">
                      <h3 class="mb-2"><%=new AdminDashDao().customercnt() %></h3>
                      <h4 class="mb-0">Total Customer</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4 stretch-card grid-margin">
              <div class="card bg-gradient-info border-0 text-white p-3">
                <div class="card-body">
                  <div class="d-flex align-items-start">
                    <i class="mdi mdi-cards-outline mdi-48px"></i>
                    <div class="ml-4">
                      <h2 class="mb-2"><%=new AdminDashDao().warecnt()%></h2>
                      <h4 class="mb-0">Total Warehouse Manager</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-4 stretch-card grid-margin">
              <div class="card bg-gradient-success border-0 text-white p-3">
                <div class="card-body">
                  <div class="d-flex align-items-start">
                    <i class="mdi mdi-chart-line mdi-48px"></i>
                    <div class="ml-4">
                      <h2 class="mb-2"><%=new AdminDashDao().shipcnt()%></h2>
                      <h4 class="mb-0">Total Ship Manager</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row">
          
           <div class="col-md-4 stretch-card grid-margin">
              <div class="card bg-gradient-danger border-0 text-white p-3">
                <div class="card-body">
                  <div class="d-flex align-items-start">
                    <div class="ml-4">
                      <h3 class="mb-2"><%=new AdminDashDao().itemcnt()%></h3>
                      <h4 class="mb-0">Total Item</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4 stretch-card grid-margin">
              <div class="card bg-gradient-info border-0 text-white p-3">
                <div class="card-body">
                  <div class="d-flex align-items-start">
                    <i class="mdi mdi-cards-outline mdi-48px"></i>
                    <div class="ml-4">
                      <h2 class="mb-2"><%=new AdminDashDao().ordercnt()%></h2>
                      <h4 class="mb-0">Total Order</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
           </div>
           
          
          
           <div class="row">
            <div class="col-md-4 d-flex align-items-stretch">
              <div class="row flex-grow-1 w-100">
               
              </div>
            </div>
             
             <div class="col-md-8 d-flex grid-margin stretch-card">
              <!-- <div class="card">
                <div class="card-body d-flex flex-column">
                  <div class="d-block d-lg-flex justify-content-between">
                    <h4 class="card-title">Statistics</h4>                    
                    <ul class="nav nav-pills nav-pills-primary border-bottom-0">
                      <li class="nav-item">
                        <a class="nav-link" href="#">Month</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Week</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link active" href="#">All Time</a>
                      </li>
                    </ul>
                  </div>
                  <canvas id="earning-chart" class="mt-auto"></canvas>
                </div>
              </div> -->
            </div>
          </div>
 
           <div class="row">
           

               
                
               
         
          
                
               
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
       <!--  <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="#" target="_blank">S.S.T</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
          </div>
        </footer> -->
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/misc.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>


<!-- Mirrored from www.urbanui.com/gleam/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 23 Jun 2018 06:42:10 GMT -->
</html>
