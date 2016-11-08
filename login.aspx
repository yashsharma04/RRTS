<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" placeholder="Email" textmode="Email" runat="server" />
        <br>
        <br>
        <asp:TextBox ID="TextBox2" textmode="Password" placeholder="Password" runat="server" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Clerk</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Supervisor</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <br>
        <br>
        <asp:Label ID="Label1" Text="Dont have an Account ?" runat="server" />
        <br>
        <br>
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/register.aspx" Text="Sign Up" runat="server" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
