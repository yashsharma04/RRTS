<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuperVisorRepairDetails.aspx.cs" Inherits="SuperVisorRepairDetails" Theme="SkinFile" %>

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
    
        Supervisor : Enter Repair Resource Details<br />
        <br />
    
        <asp:Table ID="Table1" runat="server" BorderWidth="4px" CellPadding="2" CellSpacing="2">
            <asp:TableHeaderRow> 
                <asp:TableCell>Resourses used</asp:TableCell>
                <asp:TableCell>Value</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>Skilled Manpower</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server" Text="0"></asp:TextBox>
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
            <asp:TableRow>
                <asp:TableCell>Priority</asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">High</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Low</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Start Project</asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>                        
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Start Date</asp:TableCell>
                <asp:TableCell>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br/>
        <asp:Button ID="Button1" runat="server" Text="Enter Resources" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" style="margin-left: 0px" Text="Back" PostBackUrl="~/SupervisorHome.aspx"/>
        <br />
    </div>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </form>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
