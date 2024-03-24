<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_About_Developer.aspx.cs" Inherits="inWork_Contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork About Developer </title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">

        <div class="navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">
                          <asp:Image ID="Image1" CssClass="img-responsive" ImageUrl="~/inWork_Images/inWork_Logo/inWork_Logo.jpg" ImageAlign="Left" runat="server"
                            Height="70px" Width="164px" /></a>

                </div>
                <div class="container-fluid">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="inWork_Types_Of_Leave.aspx"><span class="glyphicon glyphicon-list-alt"></span><h4 class="text-primary" style="font-family:'Segoe UI'">Types Of Leaves</h4></a></li>
                        <li><a href="inWork_Staff_Designations.aspx"><span class="glyphicon glyphicon-list"></span><h4 class="text-primary" style="font-family:'Segoe UI'">Staff Designations</h4></a></li>
                        <li><a href="inWork_About_inWork.aspx"><span class="glyphicon glyphicon-info-sign"></span><h4 class="text-primary" style="font-family:'Segoe UI'">About inWork</h4></a></li>
                        <li style="background-color:aquamarine"><a href="inWork_About_Developer.aspx"><span class="glyphicon glyphicon-user"></span><h4 class="text-primary" style="font-family:'Segoe UI'">About Developer</h4></a></li>
                        <li><a href="inWork_Login.aspx"><span class="glyphicon glyphicon-log-in"></span><h4 class="text-primary" style="font-family:'Segoe UI'">inWork Login</h4></a></li>
                    </ul>
                    
                </div>
                <hr />  
            </div>
            
        </div>
        <center>
            <div class="container-fluid"><div class="container-fluid">
            <div class="jumbotron">
                <center>
                         <div class="jumbotron" >
               <h2><span class="glyphicon glyphicon-user"></span> About Developer</h2></center>  
                
                <table id="tbl_dev" class="table" style="width:600px">
                    <tr>
                        <td>
                             <h4 class="text-muted" align="left"> Name : </h4>
                        </td>
                        <td>
                            <h4 class="text-muted" align="left"> Mihir Kothari , Dev Gandha , Yash Khirsariya</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                  <h4 class="text-muted" align="left"> Email ID : </h4> 
                        </td>
                        <td>
                            <h4 class="text-muted" align="left">kotharimihir07@gmail.com</h4>
                            <h4 class="text-muted" align="left">devgandha26@gmail.com</h4>
                            <h4 class="text-muted" align="left">yashkhrisariya01@gmail.com</h4>
                        </td>
                    </tr>
            
   </div>
                    </div>
       
    </form>
</body>

</html>
