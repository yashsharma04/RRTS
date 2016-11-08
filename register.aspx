<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
    <asp:Label ID="Label1" Text="Sign up" runat="server" />
        <br />
    <div>
        First Name
        <asp:TextBox ID="TextBox1" placeholder="First Name" runat="server" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" placeholder='Last Name' runat="server" />
        <br />
        <br />
        <asp:TextBox ID="TextBox3" textmode="Email" placeholder="Email Id" runat="server" />
        <br />
        <br />
        <asp:TextBox ID="TextBox4" textmode="Password" placeholder="Password" runat="server" />
        <br />
        <br />
        <asp:TextBox ID="TextBox5" textmode="Password" placeholder="Confirm Password" runat="server" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Clerk</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Supervisor</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" Text="Submit" runat="server" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
