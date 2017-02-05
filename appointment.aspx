<%@ Page Language="C#" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="Appointment" %>
<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<title>Health Care Medical</title>
<link rel="stylesheet" href="clinic.css" />
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
  var index = 0;
  var images = new Array(5);
  images[0] = "happy1.jpg";
  images[1] = "happy2.jpg";
  images[2] = "happy3.jpg";
  images[3] = "happy4.jpg";
  images[4] = "happy5.jpg";

  function slide() {
    if (index == 4)
      index = 0;
    else
      ++index;
    document.images[0].src = "images/" + images[index];
  }

  function makeSlide(){
    setInterval('slide()', 5000);
  }
</script>
</head>

<body onload="makeSlide();">
<header>
  <div id="logo">
    <p>Health</p>
    <p>Care</p>
  </div>
  <h1>
    Your well-being is our priority.
  </h1>
</header>
<nav>
  <ul>
    <li><a href="appointment.aspx">Take an appointment</a></li>
    <li><a href="#">Home visit</a></li>
    <li><a href="#">Suggestions</a></li>
    <li><a href="#">Health Protection</a></li>
    <li><a href="#">Policy</a></li>
    <li><a href="#">Medication</a></li>
  </ul>
</nav>
<div id="main">  
  <img src="images/happy1.jpg" width="700" height="250" />
  <br />
  <h1 style="color: #F57F17;">When are you willing to visit us?</h1>  
  <form id="form" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel RenderMode="Inline" UpdateMode="Conditional" runat="server">
    <ContentTemplate>
      <div class="row ">
        <div class="col-md-6">
          <asp:Label CssClass="control-label" Text="First Name: " runat="server"/>
          <asp:TextBox ID="first" CssClass="form-control" runat="server" />
        </div>        
      </div>
      <div class="row ">
        <div class="col-md-6">
          <asp:Label CssClass="control-label" Text="Last Name: " runat="server"/>
          <asp:TextBox ID="last" CssClass="form-control" runat="server" />
        </div>        
      </div>
      <div class="row ">
        <div class="col-md-4">
          <asp:Label CssClass="control-label" Text="Date of visit: " runat="server"/>
          <asp:TextBox ID="datepicker" CssClass="form-control" runat="server" />
        </div>        
      </div>
      <div class="row ">
        <div class="col-md-4">
          <asp:Label CssClass="control-label" Text="Time: " runat="server"/> 
          <asp:DropDownList ID="time" CssClass="form-control" runat="server">
            <asp:ListItem Text="08:00 AM"/>
            <asp:ListItem Text="09:00 AM"/>
            <asp:ListItem Text="10:00 AM"/>
            <asp:ListItem Text="11:00 AM"/>
            <asp:ListItem Text="12:00 PM"/>
            <asp:ListItem Text="02:00 PM"/>
            <asp:ListItem Text="03:00 PM"/>
            <asp:ListItem Text="04:00 PM"/>
        </asp:DropDownList>
        </div>        
      </div>
      <div class="row">
        <div class="col-md-4">
          <asp:Button Text="Set appointment" id="conf"
            CssClass="btn btn-danger" 
            OnClick="SetAppointment"
            runat="server" />
        </div>
      </div>
    <h3><asp:Label ID="confirmation" ForeColor="#BADA55" runat="server" /></h3>
    </ContentTemplate>
    </asp:UpdatePanel>
  </form>
</div>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>