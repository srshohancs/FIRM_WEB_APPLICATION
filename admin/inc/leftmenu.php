	<!--sidebar wrapper -->
	<div class="sidebar-wrapper" data-simplebar="true">
		<div class="sidebar-header">
			<div>
				<img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
			</div>
			<div>
				<h4 class="logo-text">Rukada</h4>
			</div>
			<div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
			</div>
		</div>
		<!--navigation-->
		<ul class="metismenu" id="menu">
			<li>
				<a href="dashboard.php" class="">
					<div class="parent-icon"><i class='bx bx-home-circle'></i>
					</div>
					<div class="menu-title">Dashboard</div>
				</a>
			</li>
			<li class="menu-label">Role Management</li>
			<li>
				<a href="javascript:;" class="has-arrow">
					<div class="parent-icon"><i class='bx bx-user-circle'></i>
					</div>
					<div class="menu-title">Role Management</div>
				</a>
				<ul>
					<li> <a href="users.php?do=adminManage"><i class="bx bx-radio-circle"></i>Super Admin</a>
					</li>
					<li> <a href="users.php?do=Manage"><i class="bx bx-radio-circle"></i>Manage All Users</a>
					</li>
					<li> <a href="users.php?do=Add"><i class="bx bx-radio-circle"></i>Add New User</a>
					</li>
					<li> <a href="users.php?do=ManageTrash"><i class="bx bx-radio-circle"></i>Trash</a>
					</li>
				</ul>
			</li>

			<li class="menu-label">Category Management</li>
			<li>
				<a href="javascript:;" class="has-arrow">
					<div class="parent-icon"><i class='bx bx-category'></i>
					</div>
					<div class="menu-title">Category</div>
				</a>
				<ul>
					<li> <a href="category.php?do=Manage"><i class="bx bx-radio-circle"></i>Manage All Category</a>
					</li>
					<li> <a href="category.php?do=Add"><i class="bx bx-radio-circle"></i>Add New Category</a>
					</li>
					<li> <a href="category.php?do=ManageTrash"><i class="bx bx-radio-circle"></i>Trash</a>
					</li>

				</ul>
			</li>

			<li class="menu-label">Farmer Management</li>
			<li>
				<a href="javascript:;" class="has-arrow">
					<div class="parent-icon"><i class='bx bx-donate-blood'></i>
					</div>
					<div class="menu-title">About Farmer</div>
				</a>
				<ul>
					<li> <a href="farmer.php?do=Manage"><i class="bx bx-radio-circle"></i>Manage All Farmer</a>
					</li>
					<li> <a href="farmer.php?do=Add"><i class="bx bx-radio-circle"></i>Add New Farmer</a>
					</li>
					<li> <a href="farmer.php?do=ManageTrash"><i class="bx bx-radio-circle"></i>Trash</a>
					</li>

				</ul>
			</li>
		</ul>
		<!--end navigation-->
	</div>
	<!--end sidebar wrapper -->