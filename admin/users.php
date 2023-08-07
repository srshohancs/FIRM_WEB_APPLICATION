<?php  
	include "inc/header.php";
?>

		<?php  
			$do = isset($_GET['do']) ? $_GET['do'] : "Manage";

			if ( $do == "Manage" ) { ?>
				<div class="page-wrapper">
					<div class="page-content">
						<!--breadcrumb-->
						<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
							<div class="breadcrumb-title pe-3">Users Management</div>
							<div class="ps-3">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="dashboard.php"><i class="bx bx-home-alt"></i></a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">Users</li>
									</ol>
								</nav>
							</div>
						</div>
						<!--end breadcrumb-->
						<h6 class="mb-0 text-uppercase">Manage All Users</h6>
						<hr>
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									<div id="example3_wrapper" class="dataTables_wrapper dt-bootstrap5"><div class="row">
									</div>

									<div class="row">
										<div class="col-sm-12">
											<table id="example3" class="table table-striped table-hover table-bordered dataTable" role="grid" aria-describedby="example3_info">
												<thead class="table-dark">
											    <tr>
											      <th scope="col">#Sl.</th>
											      <th scope="col">Image</th>
											      <th scope="col">Full Name</th>
											      <th scope="col">Email</th>
											      <th scope="col">Phone No.</th>
											      <th scope="col">Address</th>
											      <th scope="col">Role</th>
											      <th scope="col">Status</th>
											      <th scope="col">Join date</th>
											      <th scope="col">Action</th>
											    </tr>
											  </thead>

											  <tbody>
											  	<?php  
											  		$userSql = "SELECT * FROM users ORDER BY user_name ASC";
											  		$userQuery = mysqli_query( $db, $userSql );
											  		$userCount = mysqli_num_rows($userQuery);

											  		if ($userCount == 0) { ?>
											  			<div class="alert alert-warning text-center" role="alert">
														  Sorry! No User Found into the Database.
														</div>
											  		<?php }

											  		else {
											  			$i = 0;

												  		while ($row = mysqli_fetch_assoc($userQuery)) {
												  			$user_id 		= $row['user_id'];
												  			$user_name 		= $row['user_name'];
												  			$user_email 	= $row['user_email'];
												  			$user_phone 	= $row['user_phone'];
												  			$user_address 	= $row['user_address'];
												  			$role 			= $row['role'];
												  			$status 		= $row['status'];
												  			$user_image 	= $row['user_image'];
												  			$join_date 		= $row['join_date'];
												  			$i++;
												  			?>

												  			<tr>
														      <th scope="row"><?php echo $i; ?></th>
														      <td>image</td>
														      <td><?php echo $user_name; ?></td>
														      <td><?php echo $user_email; ?></td>
														      <td><?php echo $user_phone; ?></td>
														      <td><?php echo $user_address; ?></td>
														      <td><?php echo $role; ?></td>
														      <td><?php echo $status; ?></td>
														      <td><?php echo $join_date; ?></td>
														      <td>Action</td>
														    </tr>

												  			<?php
												  		}

											  		}
											  	?>
											    
											  </tbody>
												
											</table>

											</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php }

			else if ( $do == "Add" ) {

			}

			else if ( $do == "Edit" ) {
				
			}

			else if ( $do == "Update" ) {
				
			}

			else if ( $do == "Trash" ) {
				
			}

			else if ( $do == "ManageTrash" ) {
				
			}

			else if ( $do == "Delete" ) {
				
			}
		?>


<?php  
	include "inc/footer.php";
?>