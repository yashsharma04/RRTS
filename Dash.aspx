<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dash.aspx.cs" Inherits="Dash" Theme="SkinFile" %>

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
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <Series>
                <asp:Series Name="Series1" ChartType="Line" XValueMember="RepairDate" YValueMembers="SkilledManpower"></asp:Series>
                <asp:Series Name="Series2" ChartType="Line" XValueMember="RepairDate" YValueMembers="UnskilledManpower"></asp:Series>
                <asp:Series Name="Series3" ChartType="Line" XValueMember="RepairDate" YValueMembers="Lifters"></asp:Series>
                <asp:Series Name="Series4" ChartType="Line" XValueMember="RepairDate" YValueMembers="HeavyMachineOperators"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
            <Series>
                <asp:Series Name="Series1" ChartType="StepLine" XValueMember="RepairDate" YValueMembers="AsphaltMixer"></asp:Series>
                <asp:Series Name="Series2" ChartType="StepLine" XValueMember="RepairDate" YValueMembers="Roller"></asp:Series>
                <asp:Series Name="Series3" ChartType="StepLine" XValueMember="RepairDate" YValueMembers="Crane"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT * FROM [Resources] WHERE ([RepairDate] &gt; @RepairDate) ORDER BY [RepairDate]">
            <SelectParameters>
                <asp:Parameter DbType="Date" DefaultValue="10/10/2000" Name="RepairDate" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource2" >
            <Series>
                <asp:Series Name="Series1" XValueMember="Priority" YValueMembers="Column1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RRTSDBConnectionString %>" SelectCommand="SELECT [Priority],COUNT([Priority]) FROM [Resources] GROUP BY [Priority]"></asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
