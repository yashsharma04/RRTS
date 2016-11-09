<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUpdateTotalResources.aspx.cs" Inherits="AdminUpdateTotalResources" Theme="SkinFile" %>

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
    
        Administrator - Resource Addition Page<br />
        <br />
        Available Resources<br />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [SkilledManpower], [UnskilledManpower], [Lifters], [HeavyMachineOperators], [Roller], [AsphaltMixer], [Crane] FROM [Resources] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
        <asp:Table ID="Table1" runat="server" BorderWidth="4px" CellPadding="4" CellSpacing="4">
            <asp:TableHeaderRow> 
                <asp:TableCell>Resourses to be updated</asp:TableCell>
                <asp:TableCell>Additional Value</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>Skilled Manpower</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server" Text="0" ControlToValidate="TextBox1"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter Integer Value" ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Unskilled Manpower</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server" Text="0"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Enter Integer Value" ControlToValidate="TextBox2" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Lifters</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox3" runat="server" Text="0"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Enter Integer Value" ControlToValidate="TextBox3" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Heavy Machine Operators</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox4" runat="server" Text="0"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Enter Integer Value" ControlToValidate="TextBox4" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Asphalt Mixer</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox5" runat="server" Text="0"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Enter Integer Value" ControlToValidate="TextBox5" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Roller</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox6" runat="server" Text="0"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Enter Integer Value" ControlToValidate="TextBox6" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Crane</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox7" runat="server" Text="0"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator7" runat="server" ErrorMessage="Enter Integer Value" ControlToValidate="TextBox7" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator> 
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br/>
        <asp:Button ID="Button1" runat="server" Text="See Updated Values" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Update Values" Enabled="False" OnClick="Button2_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
        <br/>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br/>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
     </form>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
