<%@ Page Language="C#"  Debug="true" AutoEventWireup="true"  CodeFile="RequestDetails.aspx.cs" Inherits="RequestDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
    <script type="text/javascript">
        function ShowCal() {

            if (document.getElementById("street").value == "" || document.getElementById("locality").value == "") {
                
                Materialize.toast('Fields Cant be Empty !', 4000);
                return false;
            }
            else {
                window.open("ClerkHome.aspx", "_self");
                return false;
            }
        }
        $(document).ready(function () {

            
        });
        
    </script>

</head>
<body>
    <br />
    <div class="container">
    <form id="form1" runat="server">
    <div>
        
        <asp:Label Text="Enter Street" runat="server" />
        <asp:TextBox id="street" runat="server" />
        <br />
        <br />
        <asp:Label Text="Enter Locality" runat="server" />
        <asp:TextBox id="locality" runat="server" /> 
        <br />  
        <br />
        <asp:Button AutoPostBack="False" class="waves-effect waves-light btn" OnClientClick="return ShowCal();" id="btn1" Text="Submit Details"  runat="server" /> 
    </div>
    </form>
    </div>
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
