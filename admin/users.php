<?php  
	include "inc/header.php";
?>

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
									<table id="example3" class="table table-striped table-bordered dataTable" role="grid" aria-describedby="example3_info">
										<thead>
											<tr role="row">
												<th class="sorting_asc" tabindex="0" aria-controls="example3" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 157.125px;">Name</th>
												<th class="sorting" tabindex="0" aria-controls="example3" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 262.656px;">Position</th>
												<th class="sorting" tabindex="0" aria-controls="example3" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 115.719px;">Office</th>
												<th class="sorting" tabindex="0" aria-controls="example3" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 52.6875px;">Age</th>
												<th class="sorting" tabindex="0" aria-controls="example3" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 109.688px;">Start date</th><th class="sorting" tabindex="0" aria-controls="example3" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 87.125px;">Salary</th></tr>
										</thead>
										<tbody>	
											<tr role="row" class="odd">
												<td class="sorting_1">Airi Satou</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>33</td>
												<td>2008/11/28</td>
												<td>$162,700</td>
											</tr>
											<tr role="row" class="even">
												<td class="sorting_1">Angelica Ramos</td>
												<td>Chief Executive Officer (CEO)</td>
												<td>London</td>
												<td>47</td>
												<td>2009/10/09</td>
												<td>$1,200,000</td>
											</tr>
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

<?php  
	include "inc/footer.php";
?>