<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClerkHome.aspx.cs" Inherits="ClerkHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="~/css/materialize.min.css"  media="screen,projection"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
    <div>
        
        
        <br />
        <br />
    <asp:Button ID="Button1" class="waves-effect waves-light btn" Text="Submit a Request" onclick="func" runat="server" />
    </div>
    </form>
    </div>
  

      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
