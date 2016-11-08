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
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [Id], [FirstName], [LastName], [Password], [email], [Type] FROM [Table]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
