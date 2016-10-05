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
        <br />
        <asp:TextBox ID="TextBox1" placeholder="First Name" runat="server" />
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
        <asp:Button ID="Button1" Text="Submit" runat="server" />
    </div>
    </form>
</body>
</html>
