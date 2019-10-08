<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="AllVolunteer.aspx.cs" Inherits="OYW19.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="menu-title"> 
								<span>Assign</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-dashboard"></i> <span> Roles</span> <i class="fas fa-greater-than menu-arrow"></i></a>
								<ul style="display: none;">
									<li><a  href="index.aspx">Admin Registration</a></li>
									<li><a  href="AdminInfo.aspx">Admins Info & settings</a></li>
                                    <li><a  href="Volunteer.aspx">Volunteer Registration</a></li>
								</ul>
							</li>
						
							<li class="menu-title"> 
								<span>Volunteer Data</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fas fa-user"></i> <span> Volunteers</span><i class="fas fa-chevron-right menu-arrow"></i></a>
								<ul style="display: none;">
									<li><a class="active" href="AllVolunteer.aspx">All Volunteer</a></li>
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
									<li><a href="DayReg.html">Registration on day</a></li>
									<li><a href="customerData.aspx">Data Analytic</a></li>
									<li><a href="Total.html">Total Amount</a></li>
								</ul>
							</li>
						
							
							
							
							
							
						
						
						
						
							
							
							
							
					
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->

</asp:Content>
