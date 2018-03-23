<body  style="background-image:url('${baseURL}/assets/img/bg.jpg');">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Reset Password</div>
      <div class="card-body">
        <div class="text-center mt-4 mb-5">
          <h4>Forgot your password?</h4>
          <p>Enter your email address and we will send your password to your email id</p>
          <c:if test="${error_msg!=''}">
	      <h6 align="center" style="color:red">${error_msg}</h6>
	      </c:if>
        </div>
        <form action="${baseURL}/sendEmail" method="get">
          <div class="form-group">
            <input class="form-control" name="email" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter email address">
          </div>
          <button class="btn btn-primary btn-block">Reset Password</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="${baseURL}/views/register_page.jsp">Register an Account</a>
          <a class="d-block small" href="${baseURL}/views/login_page.jsp">Login Page</a>
        </div>
      </div>
    </div>
 </body>