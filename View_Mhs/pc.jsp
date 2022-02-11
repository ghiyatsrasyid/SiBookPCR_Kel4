<%-- 
    Document   : indexmhs
    Created on : Feb 5, 2022, 12:40:59 PM
    Author     : Felly Chandra
--%>
<%@page import="db.transitlogbook"%>
<%@page import="db.Membukalogbook"%>
<%@page import="db.Lab"%>
<%@page import="java.io.File"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="db.SimpleDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

		<title>Logbook Mahasiswa</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="../http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="../assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="../assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="../assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="../assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="../assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="../assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>
    </head>
    <body>
		<section class="body">
			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="../../" class="logo">
						<img src="assets/images/logoapp-default.png" height="35" alt="Porto Admin" />
					</a>
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right">
			
					<form action="pages-search-results.html" class="search nav-form">
						<div class="input-group input-search">
							<input type="text" class="form-control" name="q" id="q" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
						</div>
					</form>
			
					<span class="separator"></span>
			
					
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="../#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="assets/images/!logged-user.jpg" alt="Joseph Doe" class="img-circle" data-lock-picture="assets/images/!logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@okler.com">
								<span class="name"><%=session.getAttribute("email") %></span>
								<span class="role">Mahasiswa</span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<li>
									<a role="menuitem" tabindex="-1" href="../pages-user-profile.html"><i class="fa fa-user"></i> My Profile</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="../#" data-lock-screen="true"><i class="fa fa-lock"></i> Lock Screen</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="./../Login?proses=logout" onclick = "return confirm('Are you sure want to Logout ?');"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<aside id="sidebar-left" class="sidebar-left">
				
					<div class="sidebar-header">
						<div class="sidebar-title">
							Navigation
						</div>
						<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
							<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
						</div>
					</div>
				
					<div class="nano">
						<div class="nano-content">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-main">
									<li>
										<a href="Dashboard.jsp">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Dashboard</span>
										</a>
									</li>
                                                                        <li>
										<a href="indexmhs.jsp">
											<i class="fa fa-list-alt" aria-hidden="true"></i>
											<span>Membuka logbook</span>
										</a>
										
									</li>
									
								</ul>
							</nav>
				
							<hr class="separator" />	
						</div>
				
					</div>
				
				</aside>
				<!-- end: sidebar -->
						<section role="main" class="content-body">
	<header class="page-header">
		<h2>Daftar PC</h2>
	
		<div class="right-wrapper pull-right">
			<ol class="breadcrumbs">
				<li>
					<a href="index.html">
						<i class="fa fa-home"></i>
					</a>
				</li>
				<li><span>PC</span></li>
				<li><span>Pilih PC</span></li>
			</ol>
	
			<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
		</div>
	</header>

	<!-- start: page -->
	<div class="row">
		<section class="panel">
			<header class="panel-heading">
				<div class="panel-actions">
					<a href="#" class="fa fa-caret-down"></a>
					<a href="#" class="fa fa-times"></a>
				</div>

				<h2 class="panel-title"><strong>PC</strong></h2>
				<p class="panel-subtitle">...</p>
			</header>
			<div class="panel-body">
				<p class="m-none">
				<%
                                    String idLab=request.getParameter("idLab");
                                    String jam=request.getParameter("jam");
                                    String tanggal=request.getParameter("tanggal");
//                                    out.print(jam);
//                                    out.print(tanggal);
                                    ArrayList<Integer> a = new ArrayList<Integer>();
                                    ArrayList<Integer> b = new ArrayList<Integer>();
                                    
                                    List<transitlogbook> list = SimpleDB.tampilpcdigunakan(idLab);
                                    
                                    Lab l=SimpleDB.getlabbyId(idLab);
                                    int jmlh=l.getJumlahPc();
                                    for (transitlogbook e:list) {
                                        
                                        for (int i = 1; i <= jmlh; i++) {
                                            if (i != e.getNopcint()) {
                                                if (!jam.equals(e.getJam()) ) {
                                                    a.add(i);
                                                }
                                            }
                                            else {
                                                b.add(e.getNopcint());
                                            }
                                        }
                                    }
                                    Set<String> s = new LinkedHashSet(a);
//                                    out.println(s);
//                                    out.println(b);
                                    for (int i = 0; i < b.size(); i++) {
                                            s.removeAll(Collections.singleton(b.get(i)));
                                        }

                                    //out.println(s);

                                    Integer[]array=s.toArray(new Integer[0]);
                                    for (Integer n : array) {
                                        %> 
                                            <a href="formlogbookmhs.jsp?nopc=<%= n %>&idLab=<%=idLab%>" class="mb-xs mt-xs mr-xs btn btn-lg btn-primary ">PC <%=n %></a>
                                        <%
                                    }
                                %>     
                                
                                
				</p>
			</div>
		</section>
                   
			<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="../#" class="mobile-close visible-xs">
							Collapse <i class="fa fa-chevron-right"></i>
						</a>
			
						<div class="sidebar-right-wrapper">
			
							<div class="sidebar-widget widget-calendar">
								<h6>Upcoming Tasks</h6>
								<div data-plugin-datepicker data-plugin-skin="dark" ></div>
			
								<ul>
									<li>
										<time datetime="2014-04-19T00:00+00:00">04/19/2014</time>
										<span>Company Meeting</span>
									</li>
								</ul>
							</div>
			
							<div class="sidebar-widget widget-friends">
								<h6>Friends</h6>
								<ul>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
								</ul>
							</div>
			
						</div>
					</div>
				</div>
			</aside>
		</section>

		<!-- Vendor -->
		<script src="../assets/vendor/jquery/jquery.js"></script>
		<script src="../assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="../assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="../assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="../assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="../assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="../assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="../assets/vendor/jquery-validation/jquery.validate.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="../assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="../assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="../assets/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="../assets/javascripts/forms/examples.validation.js"></script>
	</body>
</html>
