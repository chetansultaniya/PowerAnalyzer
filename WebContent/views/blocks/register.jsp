<body  style="background-image:url('${baseURL}/assets/img/bg.jpg');">
<div class="container">
    <div class="card card-register mx-auto mt-5">
     <c:if test="${error_msg!=''}">
      <h6 align="center">${error_msg}</h6>
     </c:if>
      <div class="card-header">Register an Account</div>
      <div class="card-body">
        <form action="${baseURL}/register_user" method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="fName">First name</label>
                <input class="form-control" id="fName" name="fName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
              </div>
              <div class="col-md-6">
                <label for="lName">Last name</label>
                <input class="form-control" id="lName" name="lName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="email">Email address</label>
            <input class="form-control" id="email" name="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="password">Password</label>
                <input class="form-control" id="password" name="password" type="password" placeholder="Password">
              </div>
              <div class="col-md-6">
                <label for="cPassword">Confirm password</label>
                <input class="form-control" id="cPassword" name="cPassword" type="password" placeholder="Confirm password">
              </div>
            </div>
          </div>
          <button class="btn btn-primary btn-block">Register</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="${baseURL}/views/login_page.jsp">Login Page</a>
          <a class="d-block small" href="${baseURL}/views/forgot_password_page.jsp">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  </body>