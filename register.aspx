<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register"  Theme="SkinFile"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<!--Import Google Icon Font-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="~/css/materialize.min.css"  media="screen,projection"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <h4>Sign Up</h4>
    
        <br />
    <div>
        
        <asp:TextBox ID="TextBox1" placeholder="First Name" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" placeholder='Last Name' runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" textmode="Email" placeholder="Email Id" runat="server" />
        <br />
        <br />
        <asp:TextBox ID="TextBox4" textmode="Password" placeholder="Password" runat="server" />
        <br />
        <br />
        <asp:TextBox ID="TextBox5" textmode="Password" placeholder="Confirm Password" runat="server" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords don't match" ControlToCompare="TextBox4" ControlToValidate="TextBox5"></asp:CompareValidator>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">Clerk</asp:ListItem>
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
    </div>
     
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
