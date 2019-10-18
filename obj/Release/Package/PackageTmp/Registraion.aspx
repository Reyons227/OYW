<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Registraion.aspx.cs" Inherits="OYW19.Registration" %>
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
									<li><a href="AllVolunteer.aspx">All Volunteer</a></li>
									<li><a class="active" href="Registraion.aspx">Registration Team</a></li>
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
									<li><a href="Total.apx">Total Amount</a></li>
								</ul>
							</li>
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->


        


     <div class="page-wrapper">
			
				<!-- Page Content -->
                <div class="content container-fluid">
    
        <div>
            <asp:Label ID="Label1" runat="server" Text="Generate Barcode"></asp:Label>

        </div>
   
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Entere Product Id :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Generate" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Your generated Barcode is given below"></asp:Label>
    </p>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
      
        </div>
</div>
    

</asp:Content>
