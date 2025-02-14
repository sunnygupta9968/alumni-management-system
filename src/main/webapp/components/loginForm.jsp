
        <div class="login-card my-5">
  <div class="container">
     <div class="login-img">
      <img src="https://plus.unsplash.com/premium_vector-1721306578295-7dd4e505343e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTF8fGlsbHVzdHJhdGlvbiUyMHByb2dyYW1tZXJ8ZW58MHx8MHx8fDA%3D" alt="">
     </div>
     <div class="login-form">
          <div class="login-title">
            <h2>Login in to your Account </h2>
            <p class="login-para">Lorem ipsum dolor sit amet consectetur.</p>
          </div>
          
 
          
          
          
      <!--     <div class="google-btn">
            <h4><i class='bx bxl-google gicon'></i>Continue with Google</h4>
          </div> -->
          <div class="email-login">

          
          <c:if test="${not empty sucMsg}">
<div class="alert alert-success fs-5" role="alert">
"${sucMsg}"
</div>

			<c:remove var="sucMsg" scope="session"/>	
         </c:if> 
         <c:if test="${not empty errorMsg}">
<div class="alert alert-danger fs-5" role="alert">
"${errorMsg}"
</div>

			<c:remove var="errorMsg" scope="session"/>	
         </c:if> 
          <form action="login" class="login-form" method="post">
            <h5 style="text-align: center; margin: 10px 0px; font-size: 18px;">Sign in with Email</h5>
              <label for="email">Email :</label>
              <input type="email" id="email" name="email" >
              <label for="password">Password :</label>
              <input type="password" id="password" name="password" >
              <div class="select-course">
              <label for="courses">User Type:</label>
              <select name="userType" id="userType">
                <option value="alumni">Alumni</option>
               <!--  <option value="Programming">Faculty</option> -->
                <option value="admin">Admin</option>
                
              </select>

            </div>
              <button class="btn google-btn" type="submit">Submit</button>

            </form>
          </div>
          <div class="login-text">
            <a href="register.jsp">
              <p>New User? Register Now </p>
            </a>
            <a href="#">
              <p>Forgot Password? </p>
            </a>
          </div>
         
        </div>
        
  </div>
 </div>
   