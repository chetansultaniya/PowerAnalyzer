<body  style="background-image:url('${baseURL}/assets/img/bg.jpg');">
 <div class="container">
    <div class="card card-login mx-auto mt-5">
     <c:if test="${error_msg!=''}">
      <h6 align="center" color= "red" >${error_msg}</h6>
     </c:if>
      <c:if test="${msg!=''}">
      <h6 align="center">${msg}</h6>
     </c:if>
      <div class="card-header">Login</div>
      <div class="card-body">
        <form action="${baseURL}/login_user" method="post">
          <div class="form-group">
            <label for="email">Email address</label>
            <input class="form-control" id="email" name="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input class="form-control" id="password" name="password" type="password" placeholder="Password">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" name="rememberPassword" type="checkbox"> Remember Password</label>
            </div>
          </div>
          <button class="btn btn-primary btn-block">Login</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="${baseURL}/views/register_page.jsp">Register an Account</a>
          <a class="d-block small" href="${baseURL}/views/forgot_password_page.jsp">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  </body>