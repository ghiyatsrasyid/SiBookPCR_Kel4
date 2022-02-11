<%@page import="java.util.Locale"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="db.SimpleDB"%>
<%@page import="db.Lab"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<!doctype html>
<html class="fixed">
	<head>
		<meta charset="UTF-8">

		<title>Form Validation | Okler Themes | Porto-Admin</title>
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
            <%
                if ((session.getAttribute("email") == null) || (session.getAttribute("email"))== "" ){
                    response.sendRedirect("FormLogin.jsp");
            %>
            <%
                }
            %>
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
								<span class="role">I L B</span>
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
										<a href="index.jsp?halaman=forms-advanced">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Dashboard</span>
										</a>
									</li>									
									<li>
										<a href="index.jsp?halaman=membukalogbook">
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
						<h2>Form Membuka Logbook</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.html">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Forms</span></li>
								<li><span>Membuka Logbook</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>
                                        <%
                                            String idLab = request.getParameter("idLab");
                                            Lab l=SimpleDB.getlabbyId(idLab);
                                            
                                            
                                            LocalDateTime tt = LocalDateTime.now();
                                            String format1 = tt.format(DateTimeFormatter.ISO_DATE);
                                            String format3 = tt.format(DateTimeFormatter.ofPattern("HH : mm : ss", Locale.ENGLISH));
                                        %>
					<!-- start: page -->
					<div class="row">
						<div class="col-lg-12">
							<form id="form" action="newjsp.jsp?idLab=<%= idLab %>" method="post" class="form-vertical">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>

										<h2 class="panel-title">Form Membuka Lab</h2>
										<p class="panel-subtitle">
											
										</p>
									</header>
									<div class="panel-body">
										
										<div class="form-group">
											<label class="col-sm-3 control-label">Lab</label>
											<div class="col-sm-3">
                                                <input type="text" name="idlab" class="form-control" value="<%= l.getIdLab() %>" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Nama Lab</label>
											<div class="col-sm-3">												
                                                <input type="text" name="namalab" class="form-control" value="<%= l.getNamaLab() %>" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Tanggal</label>
											<div class="col-sm-3">
												<input type="text" name="tanggal" class="form-control" value="<%= format1%>" />
											</div>
										</div>
                                        <div class="form-group">
											<label class="col-sm-3 control-label">Jam</label>
											<div class="col-sm-3">
												<input type="text" name="jam" class="form-control" value="<%= format3%>" />
											</div>
										</div>
                                        <div class="form-group">
											<label class="col-sm-3 control-label">SKS</label>
											<div class="col-sm-3">
												<select name="sks" id="">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
											</div>
										</div>
                                        <div class="form-group">
											<label class="col-sm-3 control-label">Nama Kegiatan</label>
											<div class="col-sm-3">
                                                <input type="text" name="kegiatan" id=""  class="form-control">
											</div>
										</div>
                                        <div class="form-group">
											<label class="col-sm-3 control-label">Dosen/ Instruktur</label>
											<div class="col-sm-3">
                                                <input type="text" name="dosen" id=""  class="form-control">
											</div>
										</div>
                                        <div class="form-group">
											<label class="col-sm-3 control-label">Jumlah Mahasiswa</label>
											<div class="col-sm-3">
                                                <input type="number" name="jumlahmahasiswa" id=""  class="form-control">
											</div>
										</div>
									</div>
                                    
									<footer class="panel-footer">
										<div class="row">
											<div class="col-sm-9 col-sm-offset-3">
												<input type="submit" class="btn btn-primary" value="Kirim">
												<button type="reset" class="btn btn-default">Reset</button>
											</div>
										</div>
									</footer>
								</section>
							</form>
						</div>
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
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="assets/vendor/jquery-validation/jquery.validate.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="assets/javascripts/forms/examples.validation.js"></script>
	</body>
</html>
				