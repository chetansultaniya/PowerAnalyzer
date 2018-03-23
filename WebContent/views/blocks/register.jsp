<body  style="background-image:url('${baseURL}/assets/img/bg.jpg');">
<div class="container">
    <div class="card card-register mx-auto mt-5">
     <c:if test="${error_msg!=''}">
      <h6 align="center" style="color:red">${error_msg}</h6>
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
                <input class="form-control" id="password" id="password" name="password" type="password" placeholder="Password" onkeyup="pass()">
                <b><span id="pass">&nbsp;&nbsp;</span></b>
              </div>
              <div class="col-md-6">
                <label for="cPassword">Confirm password</label>
                <input class="form-control" id="cPassword" id="cPassword" name="cPassword" type="password" placeholder="Confirm password" onkeyup="cPass()">
                <b><span id="cpass">&nbsp;&nbsp;</span></b>
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
  <script>
    function pass()
    {
    	 var len=document.getElementById("password").value.length;
    	 if(len<=4)
   		 {
    		document.getElementById('pass').style.color="red";
   		  	document.getElementById("pass").innerHTML="&nbsp;&nbsp;Weak";
   		 }
    	 else if(len<=7)
   		 {
    		document.getElementById('pass').style.color="brown";
   		  	document.getElementById("pass").innerHTML="&nbsp;&nbsp;Good";
   		 }
    	 else
   		 {
    		 document.getElementById('pass').style.color="green";
    		 document.getElementById("pass").innerHTML="&nbsp;&nbsp;Strong";
   		 }
    }
    function cPass()
    {
    	var pass=document.getElementById("password").value;
    	var cpass=document.getElementById("cPassword").value;
    	if(pass!=cpass)
   		{
    		document.getElementById('cpass').style.color="red";
   			document.getElementById("cpass").innerHTML="&nbsp;&nbsp;Not match";
   		} 	
    	else
    	{
    		document.getElementById('cpass').style.color="green";
    		document.getElementById("cpass").innerHTML="&nbsp;&nbsp;matched";
    	}
    }
  </script>
  </body>