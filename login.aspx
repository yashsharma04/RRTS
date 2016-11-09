<%@ Page Language ="C#" MasterPageFile="~/MasterPage.master"
AutoEventWireup ="true" CodeFile="login.aspx.cs"
Inherits="login" Title="Content Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1"
runat="Server">
    
    <div class="container">
        <h3>ROAD TRACKING AND REPAIR SYSTEM</h3>
        <br />
        Email-id:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" placeholder="Email" textmode="Email" runat="server" />
        <br/>
        <br/>
        Password: <asp:TextBox ID="TextBox2" textmode="Password" placeholder="Password" runat="server" />
        <br />
        <br />
        Category:
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Selected="True">Clerk</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Supervisor</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        
        <asp:Button  class="waves-effect waves-light btn" ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <br />
        <br />
        <asp:Button  class="waves-effect waves-light btn" ID="Button2" runat="server" PostBackUrl="~/Query.aspx" Text="User Query" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br>
        <asp:Label ID="Label1" Text="Dont have an Account ?" runat="server" />
        <br>
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/register.aspx" Text="Sign Up" runat="server" />
        <br />
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" OnAdCreated="AdRotator1_AdCreated" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Add.xml"></asp:XmlDataSource>
    </div>
    
</asp:Content>
