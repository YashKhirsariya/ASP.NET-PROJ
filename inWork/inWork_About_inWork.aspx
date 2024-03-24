<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_About_inWork.aspx.cs" Inherits="inWork_About_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>About inWork </title>
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
                        <li style="background-color:aquamarine"><a href="inWork_About_inWork.aspx"><span class="glyphicon glyphicon-info-sign"></span><h4 class="text-primary" style="font-family:'Segoe UI'">About inWork</h4></a></li>
                        <li><a href="inWork_About_Developer.aspx"><span class="glyphicon glyphicon-user"></span><h4 class="text-primary" style="font-family:'Segoe UI'">About Developer</h4></a></li>
                        <li><a href="inWork_Login.aspx"><span class="glyphicon glyphicon-log-in "></span><h4 class="text-primary" style="font-family:'Segoe UI'">inWork Login</h4></a></li>
                    </ul>
                    
                </div>
                <hr />  
            </div>
            
        </div>

        <div class="container-fluid">
            <div class="container">
                <center>
           <asp:Image ID="Image2" CssClass="img-rounded" ImageUrl="~/inWork_Images/inWork_Logo/inWork_Logo.jpg" Height="100px"  runat="server" /></h2>
                    </center>
           
                <br />
                <br />
                <div class="jumbotron">
                <h3 class="text-muted" >inWork is an attendance system mainly designed & developed for taking daily attendance of the college staff members with their IN Time & OUT Time with their respective leave type.New staff members are added in the inWork attendance system by the admin with their joining date & leaving date according to their suitable designation.Here new designations and types of leave can be added by the admin, and admin also upload staff images and staff documents after that admin assign IN Time,OUT Time, & Login to new staff so that staff can login into inWork and view his/her information & his/her attendance summary.</h3>
                </div>
                </div>
        </div>
        
    </form>
</body>
</html>
