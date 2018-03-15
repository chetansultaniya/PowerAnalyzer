<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">My Profile</li>
      </ol>
      <div class="row">
        <div class="col-8">
          <h1>Profile</h1>
          <div class="table-responsive">          
			  <table class="table">
			    <thead>
			      <tr>
			        <th>First Name</th>
			        <td><%=session.getAttribute("first_name") %></td>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <th>Last Name</th>
			        <td><%=session.getAttribute("last_name") %></td>
			      </tr>
			      <tr>
			        <th>Email</th>
			        <td><%=session.getAttribute("email") %></td>
			      </tr>
			    </tbody>
			  </table>
  			</div>
		</div>
       </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    