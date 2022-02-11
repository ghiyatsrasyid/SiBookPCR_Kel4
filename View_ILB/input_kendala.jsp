<%-- 
    Document   : input_kendala
    Created on : Jan 10, 2022, 5:30:31 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Input Kendala</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="../View/assets/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="../View/assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="../View/assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="../View/assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="../View/assets/vendor/bootstrap-fileupload/bootstrap-fileupload.min.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="../View/assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="../View/assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="../View/assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="../View/assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<body>
            
		<section class="body">

			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="../" class="logo">
						<img src="../View/assets/images/logoapp-default.png" height="35" alt="Porto Admin" />
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
			
					<ul class="notifications">
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-tasks"></i>
								<span class="badge">3</span>
							</a>
			
							<div class="dropdown-menu notification-menu large">
								<div class="notification-title">
									<span class="pull-right label label-default">3</span>
									Tasks
								</div>
			
								<div class="content">
									<ul>
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Generating Sales Report</span>
												<span class="message pull-right text-dark">60%</span>
											</p>
											<div class="progress progress-xs light">
												<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
											</div>
										</li>
			
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Importing Contacts</span>
												<span class="message pull-right text-dark">98%</span>
											</p>
											<div class="progress progress-xs light">
												<div class="progress-bar" role="progressbar" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100" style="width: 98%;"></div>
											</div>
										</li>
			
										<li>
											<p class="clearfix mb-xs">
												<span class="message pull-left">Uploading something big</span>
												<span class="message pull-right text-dark">33%</span>
											</p>
											<div class="progress progress-xs light mb-xs">
												<div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width: 33%;"></div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-envelope"></i>
								<span class="badge">4</span>
							</a>
			
							<div class="dropdown-menu notification-menu">
								<div class="notification-title">
									<span class="pull-right label label-default">230</span>
									Messages
								</div>
			
								<div class="content">
									<ul>
										<li>
											<a href="#" class="clearfix">
												<figure class="image">
													<img src="../View/assets/images/!sample-user.jpg" alt="Joseph Doe Junior" class="img-circle" />
												</figure>
												<span class="title">Joseph Doe</span>
												<span class="message">Lorem ipsum dolor sit.</span>
											</a>
										</li>
										<li>
											<a href="#" class="clearfix">
												<figure class="image">
													<img src="../View/assets/images/!sample-user.jpg" alt="Joseph Junior" class="img-circle" />
												</figure>
												<span class="title">Joseph Junior</span>
												<span class="message truncate">Truncated message. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lacinia orci. Proin vestibulum eget risus non luctus. Nunc cursus lacinia lacinia. Nulla molestie malesuada est ac tincidunt. Quisque eget convallis diam, nec venenatis risus. Vestibulum blandit faucibus est et malesuada. Sed interdum cursus dui nec venenatis. Pellentesque non nisi lobortis, rutrum eros ut, convallis nisi. Sed tellus turpis, dignissim sit amet tristique quis, pretium id est. Sed aliquam diam diam, sit amet faucibus tellus ultricies eu. Aliquam lacinia nibh a metus bibendum, eu commodo eros commodo. Sed commodo molestie elit, a molestie lacus porttitor id. Donec facilisis varius sapien, ac fringilla velit porttitor et. Nam tincidunt gravida dui, sed pharetra odio pharetra nec. Duis consectetur venenatis pharetra. Vestibulum egestas nisi quis elementum elementum.</span>
											</a>
										</li>
										<li>
											<a href="#" class="clearfix">
												<figure class="image">
													<img src="../View/assets/images/!sample-user.jpg" alt="Joe Junior" class="img-circle" />
												</figure>
												<span class="title">Joe Junior</span>
												<span class="message">Lorem ipsum dolor sit.</span>
											</a>
										</li>
										<li>
											<a href="#" class="clearfix">
												<figure class="image">
													<img src="../View/assets/images/!sample-user.jpg" alt="Joseph Junior" class="img-circle" />
												</figure>
												<span class="title">Joseph Junior</span>
												<span class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lacinia orci. Proin vestibulum eget risus non luctus. Nunc cursus lacinia lacinia. Nulla molestie malesuada est ac tincidunt. Quisque eget convallis diam.</span>
											</a>
										</li>
									</ul>
			
									<hr />
			
									<div class="text-right">
										<a href="#" class="view-more">View All</a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-bell"></i>
								<span class="badge">3</span>
							</a>
			
							<div class="dropdown-menu notification-menu">
								<div class="notification-title">
									<span class="pull-right label label-default">3</span>
									Alerts
								</div>
			
								<div class="content">
									<ul>
										<li>
											<a href="#" class="clearfix">
												<div class="image">
													<i class="fa fa-thumbs-down bg-danger"></i>
												</div>
												<span class="title">Server is Down!</span>
												<span class="message">Just now</span>
											</a>
										</li>
										<li>
											<a href="#" class="clearfix">
												<div class="image">
													<i class="fa fa-lock bg-warning"></i>
												</div>
												<span class="title">User Locked</span>
												<span class="message">15 minutes ago</span>
											</a>
										</li>
										<li>
											<a href="#" class="clearfix">
												<div class="image">
													<i class="fa fa-signal bg-success"></i>
												</div>
												<span class="title">Connection Restaured</span>
												<span class="message">10/10/2014</span>
											</a>
										</li>
									</ul>
			
									<hr />
			
									<div class="text-right">
										<a href="#" class="view-more">View All</a>
									</div>
								</div>
							</div>
						</li>
					</ul>
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="../View/assets/images/!logged-user.jpg" alt="Joseph Doe" class="img-circle" data-lock-picture="../View/assets/images/!logged-user.jpg" />
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
									<a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fa fa-user"></i> My Profile</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="#" data-lock-screen="true"><i class="fa fa-lock"></i> Lock Screen</a>
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
										<a href="index.html">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>Dashboard</span>
										</a>
									</li>
									
									
									<li class="nav-parent nav-expanded nav-active">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i>
											<span>Kendala</span>
										</a>
										<ul class="nav nav-children">
											<li class="nav-active">
												<a href="input_kendala.jsp">
													 Input Kendala
												</a>
                                                                                        </li>
                                                                                        <li>
												<a href="info.jsp">
													 Info
												</a>
											</li>
											<li>
                                                                                            <a href="history.jsp">
                                                                                                History Kendala
                                                                                            </a>
                                                                                        </li>
                                                                                        	</li>
    </li>
                                                                                </ul>
                                                                                        						</div>
				
					</div>
				
				</aside>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Kendala</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.html">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Forms</span></li>
								<li><span>Basic</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						<div class="row">
							<div class="col-lg-12">
								<section class="panel">
									<header class="panel-heading">
										
						
										<h2 class="panel-title">Form Kendala</h2>
									</header>
									<div class="panel-body">
                                                                            <form action="save_kendala.jsp" class="form-horizontal form-bordered" method="get">
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">Nama Instruktur Lab</label>
												<div class="col-md-6">
													<select name="laboran"  placeholder="Nama Instruktur Laboran" class="form-control input-sm mb-md">
                                                                                                                <option>Aida Kamila, S.ST</option>
                                                                                                                <option>Nessa Chairani Bemin, S,ST</option>
                                                                                                                <option>Susiyanti, S.ST</option>
                                                                                                               <option> Dwi Listiyanti, S.ST</option>
                                                                                                               <option> Harumin, S.ST</option>
                                                                                                        </select>
												</div>
											</div>
                                                                                        
                                                                                        <div class="form-group">
													<label class="col-md-3 control-label" >Date</label>
													<div class="col-md-6">
														<div class="input-group">
															<span class="input-group-addon">
																<i class="fa fa-calendar"></i>
															</span>
															<input name="date" type="date" id="date" placeholder="<%= new java.util.Date()%>" class="form-control"  >
														</div>
													</div>
												</div>
						
                                                                                        <div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">Ruangan Lab</label>
												<div class="col-md-6">
													<select name="lab"  placeholder="Nama Instruktur Laboran" class="form-control input-sm mb-md">
                                                                                                            <option>Lab-281</option>
                                                                                                            <option>Lab-283</option>
                                                                                                            <option>Lab-284</option>
                                                                                                            <option>Lab-304</option>
                                                                                                            <option>Lab-305</option>
                                                                                                            <option>Lab-313</option>
                                                                                                            <option>Lab-316</option>
                                                                                                            <option>Lab-317</option>
                                                                                                            <option>Lab-319</option>
                                                                                                            <option>Lab-320</option>
                                                                                                            <option>Lab-324</option>
                                                                                                            <option>Lab-325</option>
                                                                                                            <option>Lab-329</option>
                                                                                                            <option>Lab-330</option>
                                                                                                            <option>Lab-352</option>
                                                                                                            <option>Lab-353</option>
                                                                                                        </select>
												</div>
											</div>
                                                                                    
                                                                                        <div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Nomor PC</label>
												<div class="col-md-6">
													<select name="pc" class="form-control input-sm mb-md">
														<option>PC-01</option>
														<option>PC-02</option>
														<option>PC-03</option>
														<option>PC-04</option>
														<option>PC-05</option>
														<option>PC-06</option>
														<option>PC-07</option>
														<option>PC-08</option>
														<option>PC-09</option>
														<option>PC-10</option>
														<option>PC-11</option>
														<option>PC-12</option>
														<option>PC-13</option>
														<option>PC-14</option>
														<option>PC-15</option>
														<option>PC-16</option>
														<option>PC-17</option>
														<option>PC-18</option>
														<option>PC-19</option>
														<option>PC-20</option>
														<option>PC-21</option>
														<option>PC-22</option>
														<option>PC-23</option>
														<option>PC-24</option>
														<option>PC-25</option>
														<option>PC-26</option>
														<option>PC-27</option>
														<option>PC-28</option>
														<option>PC-29</option>
														<option>PC-30</option>
                                                                                                                <option>PC-31</option>
														<option>PC-32</option>
														<option>PC-33</option>
														<option>PC-34</option>
														<option>PC-35</option>
														<option>PC-36</option>
														
													</select>
												</div>
											</div>
                                                                                    
                                                                                        <div class="form-group">
												<label class="col-md-3 control-label" for="textareaDefault">Kendala</label>
												<div class="col-md-6">
													<textarea name="kendala" type="text" class="form-control" rows="3" id="textareaDefault"></textarea>
												</div>
											</div>
                                                                                            
                                                                                         
                                                                                         <div class="panel-body">
									<button type="submit" value="simpan" class="mb-xs mt-xs mr-xs btn btn-default">Simpan</button>
                                                                                         </div>
                                                                                </form>
					<!-- end: page -->
				</section>
			</div>
		</section>

		<!-- Vendor -->
		<script src="../View/assets/vendor/jquery/jquery.js"></script>
		<script src="../View/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="../View/assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="../View/assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="../View/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="../View/assets/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="../View/assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="../View/assets/vendor/jquery-autosize/jquery.autosize.js"></script>
		<script src="../View/assets/vendor/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="../View/assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="../View/assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="../View/assets/javascripts/theme.init.js"></script>

	</body>
</html>
