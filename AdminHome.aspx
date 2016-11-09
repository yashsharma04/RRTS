<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome"  Theme="SkinFile"%>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Admin Homepage"></asp:Label>
        <div align="right">
            <asp:Button ID="Button2" runat="server" Text="Logout" PostBackUrl="~/login.aspx" OnClick="Button2_Click"/>
        </div>
        Total Resources:<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="SkilledManpower" HeaderText="SkilledManpower" SortExpression="SkilledManpower" />
                <asp:BoundField DataField="UnskilledManpower" HeaderText="UnskilledManpower" SortExpression="UnskilledManpower" />
                <asp:BoundField DataField="Lifters" HeaderText="Lifters" SortExpression="Lifters" />
                <asp:BoundField DataField="HeavyMachineOperators" HeaderText="HeavyMachineOperators" SortExpression="HeavyMachineOperators" />
                <asp:BoundField DataField="AsphaltMixer" HeaderText="AsphaltMixer" SortExpression="AsphaltMixer" />
                <asp:BoundField DataField="Roller" HeaderText="Roller" SortExpression="Roller" />
                <asp:BoundField DataField="Crane" HeaderText="Crane" SortExpression="Crane" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update Resources" PostBackUrl="~/AdminUpdateTotalResources.aspx"/>
        <br />
        <br />
        Available Resources : <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="SkilledManpower" HeaderText="SkilledManpower" SortExpression="SkilledManpower" />
                <asp:BoundField DataField="UnskilledManpower" HeaderText="UnskilledManpower" SortExpression="UnskilledManpower" />
                <asp:BoundField DataField="Lifters" HeaderText="Lifters" SortExpression="Lifters" />
                <asp:BoundField DataField="HeavyMachineOperators" HeaderText="HeavyMachineOperators" SortExpression="HeavyMachineOperators" />
                <asp:BoundField DataField="AsphaltMixer" HeaderText="AsphaltMixer" SortExpression="AsphaltMixer" />
                <asp:BoundField DataField="Roller" HeaderText="Roller" SortExpression="Roller" />
                <asp:BoundField DataField="Crane" HeaderText="Crane" SortExpression="Crane" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [SkilledManpower], [UnskilledManpower], [Lifters], [HeavyMachineOperators], [AsphaltMixer], [Roller], [Crane] FROM [Resources] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [SkilledManpower], [UnskilledManpower], [Lifters], [HeavyMachineOperators], [AsphaltMixer], [Roller], [Crane] FROM [Resources] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        In progress Repairs:<br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="SkilledManpower" HeaderText="SkilledManpower" SortExpression="SkilledManpower" />
                <asp:BoundField DataField="UnskilledManpower" HeaderText="UnskilledManpower" SortExpression="UnskilledManpower" />
                <asp:BoundField DataField="Lifters" HeaderText="Lifters" SortExpression="Lifters" />
                <asp:BoundField DataField="HeavyMachineOperators" HeaderText="HeavyMachineOperators" SortExpression="HeavyMachineOperators" />
                <asp:BoundField DataField="Roller" HeaderText="Roller" SortExpression="Roller" />
                <asp:BoundField DataField="AsphaltMixer" HeaderText="AsphaltMixer" SortExpression="AsphaltMixer" />
                <asp:BoundField DataField="Crane" HeaderText="Crane" SortExpression="Crane" />
                <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" />
                <asp:BoundField DataField="RepairDate" HeaderText="RepairDate" SortExpression="RepairDate" DataFormatString="{0 : dd/MM/yyyy}"/>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [SkilledManpower], [UnskilledManpower], [Lifters], [HeavyMachineOperators], [Roller], [AsphaltMixer], [Priority], [Crane], [RepairDate] FROM [Resources] WHERE ([Id] &gt; @Id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button3" runat="server" Text="View Dashboard" PostBackUrl="~/Dash.aspx"/>
    <br />
    </div>
        <br />
        <asp:Button Text="Search" runat="server" OnClick="Unnamed1_Click" />
        <br />
    </form>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>

