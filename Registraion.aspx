<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Registraion.aspx.cs" Inherits="OYW19.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     


        


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
