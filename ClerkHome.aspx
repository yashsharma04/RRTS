<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClerkHome.aspx.cs" Inherits="ClerkHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="~/css/materialize.min.css"  media="screen,projection"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <form runat="server" id ="f1">
    <div class="container">
        Clerk Homepage
        <div align="right">
        <asp:Button ID="Button2" runat="server" Text="Logout" class="waves-effect waves-light btn" PostBackUrl="~/login.aspx" OnClick="Button2_Click"/>
        </div>
        &nbsp;<div align="right">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="street" HeaderText="street" SortExpression="street" />
                    <asp:BoundField DataField="locality" HeaderText="locality" SortExpression="locality" />
                    <asp:BoundField DataField="no_potholes" HeaderText="no_potholes" SortExpression="no_potholes" />
                    <asp:BoundField DataField="severity" HeaderText="severity" SortExpression="severity" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT * FROM [Repair]"></asp:SqlDataSource>
        </div>
    <div>
    <br />

        <asp:Button ID="Button1" class="waves-effect waves-light btn" Text="Submit a Request" onclick="func" runat="server" />
    <br />
    <br />
    <asp:Button Text="Search" runat="server" OnClick="Unnamed1_Click" class="waves-effect waves-light btn"/>
    </div>
    </form>
    </div>
    </form>
      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
