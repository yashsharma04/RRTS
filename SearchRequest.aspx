<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchRequest.aspx.cs" Inherits="SearchRequest" %>

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
        <asp:Label ID="Label1" Text="Street" runat="server" />
        <asp:TextBox id="street" runat="server" />
        <br />
        <br />
        <asp:Label ID= "Label2" Text="Locality" runat="server" />
        <asp:TextBox id="locality" runat="server"/>
        <br />
        <br />
        <asp:Button ID="Button1" class="waves-effect waves-light btn" AutoPostBack="False" Text="Submit Search" OnServerClick="search" runat="server" />
        <br />
        <br />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="street" HeaderText="street" 
                SortExpression="street" />
            <asp:BoundField DataField="locality" HeaderText="locality" 
                SortExpression="locality" />
            <asp:BoundField DataField="priority" HeaderText="priority" 
                SortExpression="priority" />
            <asp:BoundField DataField="budge" HeaderText="budge" SortExpression="budge" />
            <asp:BoundField DataField="manpower" HeaderText="manpower" 
                SortExpression="manpower" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db2ConnectionString %>" 
        DeleteCommand="DELETE FROM [request] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [request] ([street], [locality], [priority], [budge], [manpower], [id]) VALUES (@street, @locality, @priority, @budge, @manpower, @id)" 
        SelectCommand="SELECT [street], [locality], [priority], [budge], [manpower], [id] FROM [request]" 
        
        
        UpdateCommand="UPDATE [request] SET [street] = @street, [locality] = @locality, [priority] = @priority, [budge] = @budge, [manpower] = @manpower WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="locality" Type="String" />
            <asp:Parameter Name="priority" Type="Int32" />
            <asp:Parameter Name="budge" Type="Int32" />
            <asp:Parameter Name="manpower" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="locality" Type="String" />
            <asp:Parameter Name="priority" Type="Int32" />
            <asp:Parameter Name="budge" Type="Int32" />
            <asp:Parameter Name="manpower" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
    </div>
    
    <p>
        &nbsp;</p>

        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="~/js/materialize.min.js"></script>
</body>
</html>
