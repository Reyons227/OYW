<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="OYW19.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 408px;
        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
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
         </form>
        </div>
</body>
</html>
