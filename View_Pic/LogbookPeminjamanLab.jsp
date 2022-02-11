<%-- 
    Document   : info_level
    Created on : Jan 17, 2022, 3:41:46 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*"%>
<!DOCTYPE html>
<!doctype html>
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
								<span class="role">PIC Lab</span>
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
									
									
												
										<li class="nav-parent">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i>
											<span>Kendala</span>
										</a>
										<ul class="nav nav-children">
											<li>
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
                                                                                        <li class="nav-parent nav-expanded nav-active">
                                                                                            <a>
                                                                                                <i class="fa fa-table" aria-hidden="true"></i>
                                                                                                <span>Data Logbook</span>
                                                                                            </a>
                                                                                            <ul class="nav nav-children">
                                                                                                <li>
                                                                                                    <a href="InputLogbook.jsp">
                                                                                                       Peminjaman Lab
                                                                                                    </a>
                                                                                                </li>
                                                                                               <li class="nav-active">
                                                                                                    <a href="LogbookPeminjamanLab.jsp">
                                                                                                        Data Logbook Peminjaman Lab
                                                                                                    </a>
                                                                                                </li>
                                                                                            
                                                                                            </ul>
                                                                                    
									</li>
						</div>
				
					</div>
				
				</aside>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Logbook Peminjaman Lab</h2>
					
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
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									<a href="#" class="fa fa-caret-down"></a>
								
								</div>

                                                            <h2 class="panel-title">Logbook Peminjaman Lab</h2>
                                                        </header>
                                                        <div class="panel-body">
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="mb-md">
                                                                            <a href="InputLogbook.jsp"><button id="addToTable" class="btn btn-primary">Tambah<i class="fa fa-plus"></i></button></a>

                                                                        </div>
                                                                    </div>
                            </div>
                            <%
                                String host = "jdbc:mysql://localhost:3306/logbook_db";
                                try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection(host, "root", "");
                                    String query = "select * from peminjamanlab";
                                    Statement stmt = conn.createStatement();
                                    ResultSet rs = null;
                                    rs=stmt.executeQuery(query);
                                %>
                            <table class="table table-bordered table-striped mb-none" id="datatable-editable">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Peminjam</th>
                                        <th>NIM</th>
                                        <th>Tanggal Pengajuan</th>
                                        <th>Ruang Lab</th>
                                        <th>Tanggal Peminjaman</th>
                                        <th>Tanggal Pengembalian</th>
                                        <th>Status Peminjaman</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <% while (rs.next()){ %>
            <tr>
                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("nama")%></td>
                <td><%=rs.getString("nim")%></td>
                <td><%=rs.getString("tgl_pengajuan")%></td>
                <td><%=rs.getString("ruang")%></td>
                <td><%=rs.getString("tgl_peminjaman")%></td>
                <td><%=rs.getString("tgl_pengembalian")%></td>
                <td><%=rs.getString("status")%></td>
                <td><a href="EditLogbook.jsp?id=<%=rs.getString("id")%>"
                       >Edit</a> | <a href="DeleteLogbook.jsp?id=<%=rs.getString("id")%>">Hapus</a></td>
            </tr>
            <%}%>
                            </table>
                            <%
                                rs.close();
                                stmt.close();
                                conn.close();
                                }
                        catch(SQLException ex){
                                out.print("Gagal Koneksi");
                        }
                        catch(Exception ex){
                                out.print(ex.getMessage());
                        }
                        %>
                        </div>
                    </section>
                    <!-- end: page -->
               

        <!-- Vendor -->
        <script src="../View/assets/vendor/jquery/jquery.js"></script>
        <script src="../View/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
        <script src="../View/assets/vendor/bootstrap/js/bootstrap.js"></script>
        <script src="../View/assets/vendor/nanoscroller/nanoscroller.js"></script>
        <script src="../View/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script src="../View/assets/vendor/magnific-popup/magnific-popup.js"></script>
        <script src="../View/assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>

        <!-- Specific Page Vendor -->
        <script src="../View/assets/vendor/select2/select2.js"></script>
        <script src="../View/assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
        <script src="../View/assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>

        <!-- Theme Base, Components and Settings -->
        <script src="../View/assets/javascripts/theme.js"></script>

        <!-- Theme Custom -->
        <script src="../View/assets/javascripts/theme.custom.js"></script>

        <!-- Theme Initialization Files -->
        <script src="../View/assets/javascripts/theme.init.js"></script>


        <!-- Examples -->
        <script src="../View/assets/javascripts/tables/examples.datatables.editable.js"></script>
    </body>
</html>