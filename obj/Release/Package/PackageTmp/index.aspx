<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="OYW19.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
			
				<!-- Logo -->
              
				<!-- /Logo -->
				
				<a id="toggle_btn" href="javascript:void(0);">
					<span class="bar-icon">
						<span></span>
						<span></span>
						<span></span>
					</span>
				</a>
				
				<!-- Header Title -->

                <div class="page-title-box">
					<h3>OYW</h3>
                </div>
				<!-- /Header Title -->
				
				<a id="mobile_btn" class="mobile_btn" href="#sidebar"><i class="fa fa-bars"></i></a>
			
		<ul class="nav user-menu">
				
					
			
				
					
					
					
					

					<li class="nav-item dropdown has-arrow main-drop">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							
							<span>Admin</span>
						</a>
						<div class="dropdown-menu">
						<!--	<a class="dropdown-item" href="profile.html">My Profile</a>
							<a class="dropdown-item" href="settings.html">Settings</a>-->
							<a class="dropdown-item" href="login.aspx">Logout</a>
						</div>
					</li>
				</ul>
			
				<!-- Mobile Menu -->
				<div class="dropdown mobile-user-menu">
					<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
					<div class="dropdown-menu dropdown-menu-right">
					
						<a class="dropdown-item" href="login.aspx">Logout</a>
					</div>
				</div>
				<!-- /Mobile Menu -->
				
            </div>
			<!-- /Header -->
			
			<!-- Sidebar -->
             <!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="menu-title"> 
								<span>Assign</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-dashboard"></i> <span id="Rid"> Roles</span> <i class="fas fa-greater-than menu-arrow"></i></a>
								<ul style="display: none;">
									<li><a  href="index.aspx">Admin Registration</a></li>
									<li><a  href="AdminInfo.aspx">Admins Info & settings</a></li>
                                    <li><a class="active" href="Volunteer.aspx">Volunteer Registration</a></li>
								</ul>
							</li>
						
							<li class="menu-title"> 
								<span>Volunteer Data</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user"></i> <span> Volunteers</span><i class="fas fa-chevron-right menu-arrow"></i></a>
								<ul style="display: none;">
									<li><a href="AllVolunteer.aspx">All Volunteer</a></li>
									<li><a href="Registraion.aspx">Registration Team</a></li>
									<li><a href="Security.aspx">Security Team</a></li>
								</ul>
							</li>
							<li> 
								<a href="Customer.aspx"><i class="fas fa-users"></i> <span>Customer</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-info"></i> <span> Customer Info</span> <i class="fas fa-caret-right menu-arrow"></i></a>
								<ul style="display: none;">
									<li><a href="DayReg.aspx">Registration on day</a></li>
									<li><a href="customerData.aspx">Data Analytic</a></li>
									<li><a href="Total.aspx">Total Amount</a></li>
								</ul>
							</li>
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->
			<!-- /Sidebar -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Welcome Admin!</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item active">Dashboard</li>
								</ul>
							</div>
						</div>
					</div>
				<div class="col-auto float-right ml-auto">
								<a href="#" class="btn add-btn" data-toggle="modal" data-target="#add_holiday"><i class="fa fa-plus"></i> Add Holiday</a>
							</div>
				</div>
				<!-- /Page Content -->
                <!-- Add Holiday Modal -->
				<div class="modal custom-modal fade" id="add_holiday" role="dialog">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Add Volunteer</h5>
								<button type="button" runat="server"  class="close" id="btnAdd" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
						
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="col-form-label">First Name <span class="text-danger">*</span></label>
												<input class="form-control" type="text">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="col-form-label">Last Name</label>
												<input class="form-control" type="text">
											</div>
										</div>
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Username <span class="text-danger">*</span></label>
												<input class="form-control" type="text">
											</div>
										</div>
										
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Password</label>
												<input class="form-control" type="password">
											</div>
										</div>
									
									
									
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Phone </label>
												<input class="form-control" type="text">
											</div>
										</div>
									
									
										<div class="col-md-6">
											<div class="form-group">
												<label>Roles <span class="text-danger">*</span></label>
												<select class="select">
													<option>Registraion </option>
													<option>Security </option>
												
												</select>
											</div>

										</div>
                                        	<div class="col-md-6">
											<div class="form-group">
												<label>State <span class="text-danger">*</span></label>
                                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="State" Checked="true" Text="Active"/>
                                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="State" Text="InActive"/>
											</div>
										</div>
									</div>
								
									<div class="submit-section">
										<button class="btn btn-primary submit-btn" id="btnSubmit">Submit</button>
									</div>
								
							</div>
                        </div>
                            </div>

                        </div>
					</div>
				</div>
				<!-- /Add Holiday Modal -->
  
			<!-- /Page Wrapper -->
			

		<!-- /Main Wrapper -->

		
		
		



</asp:Content>
