<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Admin Homepage"></asp:Label>
        <br />
        <br />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [SkilledManpower], [UnskilledManpower], [Lifters], [HeavyMachineOperators], [Crane], [Roller], [AsphaltMixer] FROM [Resources] WHERE (([RepairId] = @RepairId) AND ([Id] = @Id))">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="RepairId" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
