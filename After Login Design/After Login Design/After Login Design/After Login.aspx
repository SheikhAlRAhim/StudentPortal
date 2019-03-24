<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="After Login.aspx.cs" Inherits="After_Login_Design.After_Login" %>

<!DOCTYPE html>

<html>
<title>After Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">
    <form runat="server">
        <!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third" style ="width: 23%;">
        
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="image/Barack Obama.jpg" style="width:100%" alt="Avatar" >
          <div class="w3-display-bottomleft w3-container w3-text-white">
            <h3><asp:Label ID="lblStudName" runat="server"></asp:Label></h3>
          </div>
        </div>
        <div class="w3-container">
          
          <p><i class="fa fa-registered fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblRegistrationNumber" runat="server"></asp:Label></p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblClass" runat="server"></asp:Label></p>
          <p><i class="fa fa-id-card-o fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblRollNumber" runat="server"></asp:Label></p>
          <p><i class="fa fa-puzzle-piece fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblSection" runat="server"></asp:Label></p>
          <p><i class="fa fa-id-card fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblFatherName" runat="server"></asp:Label></p>
          <p><i class="fa fa-id-card fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblMotherName" runat="server"></asp:Label></p>
          <p><i class="fa fa-address-card-o fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblAddress" runat="server"></asp:Label></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblMobileNumber" runat="server"></asp:Label></p>
          <p><i class="fa fa-envelope-o fa-fw w3-margin-right w3-large w3-text-teal"></i><asp:Label ID="lblEmailID" runat="server"></asp:Label></p>
          <hr>
		  
        </div>
      </div><br>

    <!-- End Left Column -->
      </div>


    <!-- Right Column -->
    <div class="w3-twothird" style="width: 77%;">
        
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-calendar fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Attendance</h2>
         
          <div>
              <asp:GridView ID="gvAttendance" runat="server" AutoGenerateColumns="false">
                  <Columns>
                      <asp:BoundField DataField="AttendanceDate" HeaderText="Attendance Date" />
                       <asp:BoundField DataField="Status" HeaderText="Status" />
                  </Columns>
              </asp:GridView>
          </div>
      </div>

      <div class="w3-container w3-card w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Payment Details</h2>


      </div>
            
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>


    <div>
         <div class="w3-container w3-card w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Notifications</h2>
    </div>
  
  <!-- End Page Container -->
</div>

        </form>

</body>
</html>
