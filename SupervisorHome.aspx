<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SupervisorHome.aspx.cs" Inherits="SupervisorHome" Theme="SkinFile"%>

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
    
        
        <asp:Label ID="Label1" runat="server" Text="Supervisor Homepage"></asp:Label>
        <div align="right">
            <asp:Button ID="Button2"  runat="server" Text="Logout" PostBackUrl="~/login.aspx" OnClick="Button2_Click"/>
        </div>
        <br />
        Repair Requests:<br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" AllowPaging="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="street" HeaderText="street" SortExpression="street" />
                <asp:BoundField DataField="locality" HeaderText="locality" SortExpression="locality" />
                <asp:BoundField DataField="no_potholes" HeaderText="no_potholes" SortExpression="no_potholes" />
                <asp:BoundField DataField="severity" HeaderText="severity" SortExpression="severity" />
                <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Click"
                    Text="Add Repair Items" CommandArgument='<%# Eval("id") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT * FROM [Repair] R WHERE (SELECT [RepairId] FROM [Resources] S WHERE S.[RepairId] = R.[Id]) IS NULL"></asp:SqlDataSource>
        Ongoing Projects:<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="SkilledManpower" HeaderText="SkilledManpower" SortExpression="SkilledManpower" />
                <asp:BoundField DataField="UnskilledManpower" HeaderText="UnskilledManpower" SortExpression="UnskilledManpower" />
                <asp:BoundField DataField="Lifters" HeaderText="Lifters" SortExpression="Lifters" />
                <asp:BoundField DataField="HeavyMachineOperators" HeaderText="HeavyMachineOperators" SortExpression="HeavyMachineOperators" />
                <asp:BoundField DataField="AsphaltMixer" HeaderText="AsphaltMixer" SortExpression="AsphaltMixer" />
                <asp:BoundField DataField="Roller" HeaderText="Roller" SortExpression="Roller" />
                <asp:BoundField DataField="Crane" HeaderText="Crane" SortExpression="Crane" />
                <asp:BoundField DataField="RepairId" HeaderText="RepairId" SortExpression="RepairId" />
                <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" />
                <asp:BoundField DataField="RepairDate" HeaderText="RepairDate" SortExpression="RepairDate" DataFormatString="{0 : dd/MM/yyyy}"/>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [Id], [SkilledManpower], [UnskilledManpower], [Lifters], [HeavyMachineOperators], [AsphaltMixer], [Roller], [Crane], [RepairId], [Priority], [RepairDate] FROM [Resources] WHERE (([Ongoing] = @Ongoing) AND ([Id] &gt; @Id))">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Ongoing" Type="Int32" />
                <asp:Parameter DefaultValue="2" Name="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:Button Text="Search" runat="server" OnClick="Unnamed1_Click" />
    </div>
    </form>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
