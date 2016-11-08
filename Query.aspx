<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Query.aspx.cs" Inherits="Query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Available Resources:<br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="SkilledManpower" HeaderText="Skilled Manpower" SortExpression="SkilledManpower" />
                <asp:BoundField DataField="UnskilledManpower" HeaderText="Unskilled Manpower" SortExpression="UnskilledManpower" />
                <asp:BoundField DataField="Lifters" HeaderText="Lifters" SortExpression="Lifters" />
                <asp:BoundField DataField="HeavyMachineOperators" HeaderText="Heavy Machine Operators" SortExpression="HeavyMachineOperators" />
                <asp:BoundField DataField="AsphaltMixer" HeaderText="Asphalt Mixer" SortExpression="AsphaltMixer" />
                <asp:BoundField DataField="Roller" HeaderText="Roller" SortExpression="Roller" />
                <asp:BoundField DataField="Crane" HeaderText="Crane" SortExpression="Crane" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [SkilledManpower], [UnskilledManpower], [Lifters], [HeavyMachineOperators], [AsphaltMixer], [Roller], [Crane] FROM [Resources] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Consumed Resources Till Date:<br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Column1" HeaderText="Skilled Manpower" ReadOnly="True" SortExpression="Column1" />
                <asp:BoundField DataField="Column2" HeaderText="Unskilled Manpower" ReadOnly="True" SortExpression="Column2" />
                <asp:BoundField DataField="Column3" HeaderText="Lifters" ReadOnly="True" SortExpression="Column3" />
                <asp:BoundField DataField="Column4" HeaderText="Heavy Machine Operators" ReadOnly="True" SortExpression="Column4" />
                <asp:BoundField DataField="Column5" HeaderText="Asphalt Mixer" ReadOnly="True" SortExpression="Column5" />
                <asp:BoundField DataField="Column6" HeaderText="Rollers" ReadOnly="True" SortExpression="Column6" />
                <asp:BoundField DataField="Column7" HeaderText="Cranes" ReadOnly="True" SortExpression="Column7" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT SUM([SkilledManpower]), SUM([UnskilledManpower]), SUM([Lifters]), SUM([HeavyMachineOperators]), SUM([AsphaltMixer]),SUM( [Roller]),SUM( [Crane]) FROM [Resources] WHERE ([Id] &gt; @Id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="Id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
