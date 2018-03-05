<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="${baseURL}/views/index.jsp">Power Generation
			Analyzer</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Example Pages"><a class="nav-link" href="${baseURL}/views/profile_page.jsp">
						<i class="fa fa-fw fa-file"></i> <span class="nav-link-text">My
							Profile</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Dashboard"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseComponents" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">Geo
							Chart</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseComponents">
						<li><a href="${baseURL}/views/hydro_power_page.jsp">Hydro power plants</a></li>
						<li><a href="${baseURL}/views/thermal_power_page.jsp">Thermal power plants</a></li>
						<li><a href="${baseURL}/views/rainfall_page.jsp">Annual rainfall</a></li>
						<li><a href="">***left content***</a></li>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Charts"><a class="nav-link" href="${baseURL}/views/other_chart_page.jsp"> <i
						class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">Other
							Charts</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Tables"><a class="nav-link" href="${baseURL}/views/table_page.jsp"> <i
						class="fa fa-fw fa-table"></i> <span class="nav-link-text">Tables</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Components"><a class="nav-link" href="${baseURL}/views/comparison_page.jsp">
						<i class="fa fa-fw fa-wrench"></i> <span class="nav-link-text">Comparision</span>
				</a></li>

				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Link"><a class="nav-link" href="${baseURL}/views/about_us_page.jsp"> <i
						class="fa fa-fw fa-link"></i> <span class="nav-link-text">About
							us</span>
				</a></li>
			</ul>
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item"><a class="nav-link text-center"
					id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
				</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>Logout
				</a></li>
			</ul>
		</div>
	</nav>