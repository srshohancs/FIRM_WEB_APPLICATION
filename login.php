<?php include "inc/header.php"; ?>

	<div role="main" class="main">
		<!-- ########## START: TOP HEADING ########## -->
		<section class="page-header page-header-modern bg-color-light-scale-1 page-header-md"
		style="background-image: linear-gradient(to left, rgba(0,0,0,0.4), rgba(0,0,0,0.4)) ,url(assets/images/breadcrumb.jpg);
					background-repeat: no-repeat;
					background-size: cover;
					background-position: center;
					
					">
			<div class="container">
				<div class="row">
					<div class="col-md-12 align-self-center p-static order-2 text-center">

						<h1 class="text-white font-weight-bold text-8">User Login</h1>
					</div>

					<div class="col-md-12 align-self-center order-1">

						<ul class="breadcrumb d-block text-center" >
							<li><a href="index.php" class="text-white">HOME</a></li>
							<li class="active text-white" >USER LOGIN</li>
						</ul>
					</div>					
				</div>
			</div>
		</section>
		<!-- ########## END: TOP HEADING ########## -->

		<section class="py-5">
        <div class="container">
          <div class="row pb-5">
            <div class="col-lg-6 offset-lg-3" style="border-top: 4px solid #08c; padding: 29px 52px 39px; box-shadow: 1px 10px 15px #ccc; border-radius: 5px; background: #F7F7F7; font-size: 16px; color: #000;">

              <form action="" method="POST">
                <div class="mb-0">
                  <label for="exampleInputEmail1" class="form-label">Email address</label>
                </div>
                <div class="input-group form-group">
                  <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="enter your email..." aria-label="emailHelp" aria-describedby="basic-addon2" required autocomplete="off">
                  <span class="input-group-text" id="basic-addon2"><i class="fa-solid fa-envelope"></i></span>
                </div>
            

                <div class="mb-0">
                  <label for="exampleInputPassword1" class="form-label">Password</label>
                </div>
                <div class="input-group form-group">
                  <input type="password" name="password" class="form-control" id="myInput" placeholder="enter your password..." required autocomplete="off">
                  <span class="input-group-text" id="basic-addon2"><i class="fa-solid fa-lock"></i></span>
                </div>

                <div class="form-group form-check">
								    <input type="checkbox" class="form-check-input" id="exampleCheck1" onclick="myFunction()">
								    <label class="form-check-label" for="exampleCheck1">Show Password</label>
								    <script>
				                    function myFunction() {
				                      var x = document.getElementById("myInput");
				                      if (x.type === "password") {
				                        x.type = "text";
				                      } else {
				                        x.type = "password";
				                      }
				                    }
				                  </script>
								 </div>

                <div class="form-group">      
                <button type="submit" name="login_btn" class="btn btn-primary btn-lg btn-block">Log in</button>
                </div>

                <div class="form-group">
                	<i class="fa-regular fa-circle-question"></i> Not a Member? <a href="register.php">Signup Here</a>
                </div>
              </form>

              <?php  
								if (isset($_POST['login_btn'])) {
									$userEmail 		= mysqli_real_escape_string($db, $_POST['email']);
									$password 		= mysqli_real_escape_string($db, $_POST['password']);
									$hassedPass 	= sha1($password);

									$sql = "SELECT * FROM users WHERE user_email='$userEmail' AND status=1";
									$findData = mysqli_query($db, $sql);
									$countUser = mysqli_num_rows($findData);

									if ($countUser == 0) { ?>
										<div class="alert alert-danger text-center" role="alert">
										  Sorry! No User found in our System!
										</div>
									<?php }
									
									else {
										while ($row = mysqli_fetch_assoc($findData)) {
											$_SESSION['user_id'] 	= $row['user_id'];
											$fullname 						= $row['user_name'];
											$_SESSION['email'] 		= $row['user_email'];
											$password 						= $row['user_password'];
											$_SESSION['phone']		= $row['user_phone'];
											$role 								= $row['role'];
											$status 							= $row['status'];


											if ($_SESSION['email'] != $userEmail || $password == $hassedPass ) {
												header("Location: index.php");
											}
											else {
												session_destroy();
												header("Location: index.php");
											}

											
										}
									}
									
								}
							?>
            </div>
          </div>
        </div>
      </section>
	</div>

<?php 
	include "inc/footer.php";
?>