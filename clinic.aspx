<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clinic.aspx.cs" Inherits="clinic" %>
<!doctype html>
<html>
<head runat="server">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Health Care Medical</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="clinic.css" />
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
  <h1>Health Care</h1>
  <p>
    The Affordable Care Act put in place comprehensive 
    health insurance reforms that have improved access, 
    affordability, and quality in health care for Americans. 
    Learn about the law, how to get coverage, and how it 
    has helped people across the country.<br /><br />
    In health care, the days of business as usual are 
    over. Around the world, every health care system is 
    struggling with rising costs and uneven quality 
    despite the hard work of well-intentioned, 
    well-trained clinicians. Health care leaders and 
    policy makers have tried countless incremental 
    fixes—attacking fraud, reducing errors, enforcing 
    practice guidelines, making patients better “consumers,” 
    implementing electronic medical records—but none have 
    had much impact.<br /><br />
    It’s time for a fundamentally new strategy.<br /><br />
    At its core is maximizing value for patients: that is, 
    achieving the best outcomes at the lowest cost. 
    We must move away from a supply-driven health care 
    system organized around what physicians do and toward 
    a patient-centered system organized around what 
    patients need. We must shift the focus from the volume 
    and profitability of services provided—physician visits, 
    hospitalizations, procedures, and tests—to the patient 
    outcomes achieved. And we must replace today’s fragmented 
    system, in which every local provider offers a full range 
    of services, with a system in which services for 
    particular medical conditions are concentrated in 
    health-delivery organizations and in the right locations 
    to deliver high-value care.<br /><br />
    Making this transformation is not a single step but 
    an overarching strategy. We call it the “value agenda.” 
    It will require restructuring how health care delivery 
    is organized, measured, and reimbursed. In 2006, Michael 
    Porter and Elizabeth Teisberg introduced the value 
    agenda in their book Redefining Health Care. Since 
    then, through our research and the work of thousands 
    of health care leaders and academic researchers around 
    the world, the tools to implement the agenda have been 
    developed, and their deployment by providers and other 
    organizations is rapidly spreading.<br /><br />
    The transformation to value-based health care is well 
    under way. Some organizations are still at the stage 
    of pilots and initiatives in individual practice areas. 
    Other organizations, such as the Cleveland Clinic and 
    Germany’s Schön Klinik, have undertaken large-scale 
    changes involving multiple components of the value 
    agenda. The result has been striking improvements in 
    outcomes and efficiency, and growth in market share.
  </p>
  <form id="form" runat="server">
    
  </form>
</div>

</body>
</html>
