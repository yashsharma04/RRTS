<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchRequest.aspx.cs" Inherits="SearchRequest"  Theme="SkinFile"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="~/css/materialize.min.css"  media="screen,projection"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <br />
    <div class="container">
        <form id="form1" runat="server">
    <div>
        
        <br />
        <br />
        <asp:Label ID= "Label2" Text="Locality" runat="server" />
        <asp:TextBox id="locality" runat="server"/>
        <br />
        <br />
        <asp:Button ID="Button1" class="waves-effect waves-light btn" AutoPostBack="False" Text="Submit Search" OnServerClick="search" runat="server" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="street" HeaderText="street" SortExpression="street" />
                <asp:BoundField DataField="locality" HeaderText="locality" SortExpression="locality" />
                <asp:BoundField DataField="no_potholes" HeaderText="no_potholes" SortExpression="no_potholes" />
                <asp:BoundField DataField="severity" HeaderText="severity" SortExpression="severity" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT * FROM [Repair] WHERE ([locality] = @locality)">
            <SelectParameters>
                <asp:ControlParameter ControlID="locality" Name="locality" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        
    </div>
    </form>
    </div>
    
    <p>
        &nbsp;</p>

        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="~/js/materialize.min.js"></script>
</body>
</html>
