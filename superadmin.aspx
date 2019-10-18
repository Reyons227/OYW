<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="superadmin.aspx.cs" Inherits="OYW19.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <style>

    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
<div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Register</div>
                            <div class="card-body">

                              <div class="form-horizontal" >

                                    	<div class="modal-body">
						
									<div class="row">
										<div class="col-sm-12">
											<div class="form-group">
                                                
                             <asp:HiddenField ID="Admin_id" runat="server" />

												<label class="col-form-label">Full Name <span class="text-danger">*</span></label>
											
                                                <asp:TextBox class="form-control" ID="txtfname" runat="server" required="required" pattern=".{4,30}" title=" More than 4 characters"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtfname"
                                    ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"   
                                    Display = "Dynamic" ErrorMessage = "Should only contain alphabets "/>
                                                
                                 

											</div>
										</div>
										
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Username <span class="text-danger">*</span></label>
												 <asp:TextBox AutoPostBack="true" class="form-control" OnTextChanged="OnUsernameCheck" ID="txtusername" runat="server"  pattern=".{4,30}" title="More than 4 characters" required="required"></asp:TextBox>              
                                 <asp:Label ID="lblMessage" ForeColor="Red" Text="" runat="server" />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtusername"
                                    ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"   
                                    Display = "Dynamic" ErrorMessage = "White space not allowed"/>
                                            </div>
										</div>
									<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Password <span class="text-danger">*</span></label>
												 <asp:TextBox  class="form-control"  pattern=".{8,20}" title="More than 8 characters" ID="txtpassword" runat="server" TextMode="Password" required="required"></asp:TextBox>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpassword"
                                    ForeColor="Red" ValidationExpression="^[0-9]{6,20}$"   
                                    Display = "Dynamic" ErrorMessage = "Password length should be more than 6 "></asp:RegularExpressionValidator>
										</div>
                                        </div>
										<div class="col-sm-12">
											<div class="form-group">
												<label class="col-form-label">Phone <span class="text-danger">*</span></label>
												 <asp:TextBox class="form-control" MaxLength="10"  pattern=".{10,10}" title="Invalid number"  ID="txtphone" runat="server" TextMode="Number" required="required"></asp:TextBox>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtphone"
                                    ForeColor="Red" ValidationExpression="^[0-9]{10,10}$"   
                                    Display = "Dynamic" ErrorMessage = "Invalid Phone Number"></asp:RegularExpressionValidator>
										</div>
										</div>	
                                         </div> 
                                            <div class="col-md-8">
											<div class="form-group">
								<label class="col-form-label">Designation :</label>				 
                        <asp:DropDownList ID="designation1" runat="server" DataValueField ="Roles" DataTextField="Roles">  
                    
                            <asp:ListItem>Admin</asp:ListItem>  
                           <asp:ListItem>Heads</asp:ListItem>  
                        </asp:DropDownList>  
                
											</div>

										</div>
										<div class="col-md-8">
											<div class="form-group">
								<label class="col-form-label">Roles :</label>				 
                        <asp:DropDownList ID="ddroles" runat="server" DataValueField ="Roles" DataTextField="Roles">  
                    
                            <asp:ListItem>Guest</asp:ListItem>  
                            <asp:ListItem>Admin</asp:ListItem>  
                            <asp:ListItem >SuperAdmin</asp:ListItem>  
                        </asp:DropDownList>  
                
											</div>

										</div>
                                       <div class="col-md-8">
											<div class="form-group">
												<label>State :<span class="text-danger">*</span></label>
                                                <asp:RadioButton ID="rbtnactive" runat="server" GroupName="State" Checked="true" Text="Active"/>
                                                <asp:RadioButton ID="rbtninactive" runat="server" GroupName="State" Text="InActive"/>
											</div>
										</div>
								
								
									<div class="submit-section col-md-6 offset-md-4 ">
										
                                        <asp:Button class="btn btn-primary submit-btn" ID="save" runat="server" Text="Save" OnClick="Save_Click" />
									</div>
								</div>
							</div>
                        </div>
                            </div>

                        </div>
                    </div>
                </div>

    </form>
  
  
</body>
</html>
