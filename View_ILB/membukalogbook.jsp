
<%@page import="db.Membukalogbook"%>
<%@page import="db.Lab"%>
<%@page import="java.io.File"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="db.SimpleDB"%>
<%!
Connection con=null;
%>
<%
                if ((session.getAttribute("email") == null) || (session.getAttribute("email"))== "" ){
                    response.sendRedirect("FormLogin.jsp");
            %>
            <%
                }
            %>
<section role="main" class="content-body">
	<header class="page-header">
		<h2>Daftar Lab</h2>
	
		<div class="right-wrapper pull-right">
			<ol class="breadcrumbs">
				<li>
					<a href="index.html">
						<i class="fa fa-home"></i>
					</a>
				</li>
				<li><span>Lab</span></li>
				<li><span>Membuka log book</span></li>
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

				<h2 class="panel-title"><strong>Lab</strong></h2>
				<p class="panel-subtitle">...</p>
			</header>
			<div class="panel-body">
				<p class="m-none">  
                                <%
                                    List<Lab> list = SimpleDB.tampilkirilab();

                                    for (Lab e:list) { %>
        <a href="formmembukalogbook.jsp?idLab=<%= e.getIdLab()%>" class="mb-xs mt-xs mr-xs btn btn-lg btn-primary "><%= e.getIdLab()%></a> 
        <%}
                                %>  
				</p>
			</div>
		</section>
		<!-- col-md-6 -->
	</div>
	
	