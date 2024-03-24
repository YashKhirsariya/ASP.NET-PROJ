<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Login.aspx.cs" Inherits="inWork_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork Login </title>
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
                        <li><a href="inWork_Types_Of_Leave.aspx"><span class="glyphicon glyphicon-list-alt"></span>
                            <h4 class="text-primary" style="font-family:'Segoe UI'">Types Of Leaves</h4>
                        </a></li>
                        <li><a href="inWork_Staff_Designations.aspx"><span class="glyphicon glyphicon-list"></span>
                            <h4 class="text-primary" style="font-family:'Segoe UI'">Staff Designations</h4>
                        </a></li>

                        <li><a href="inWork_About_inWork.aspx"><span class="glyphicon glyphicon-info-sign"></span>
                            <h4 class="text-primary" style="font-family:'Segoe UI'">About inWork</h4>
                        </a></li>
                        <li><a href="inWork_About_Developer.aspx"><span class="glyphicon glyphicon-user"></span>
                            <h4 class="text-primary" style="font-family:'Segoe UI'">About Developer</h4>
                        </a></li>
                        <li style="background-color: aquamarine"><a href="inWork_Login.aspx"><span class="glyphicon glyphicon-log-in"></span>
                            <h4 class="text-primary" style="font-family:'Segoe UI'">inWork Login</h4>
                        </a></li>
                    </ul>

                </div>
                <hr />
            </div>

        </div>
        <div class="jumbotron">
            <center>
         <h2 class="text-primary" style="font-family:'Segoe UI'"><span class="glyphicon glyphicon-log-in"></span> <asp:Label id="Label1" CssClass="text-info" BorderStyle="None" Text="inWork Login" runat="server"></asp:Label></h2>
              



                <br />
        <h4>
            <asp:Table CssClass="table" Border="0" runat="server" Width="500px">
               
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label id="lbl_unm" CssClass="text-info" BorderStyle="None" Text="Username" runat="server" ></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txt_unm" CssClass="form-control" BorderStyle="Solid" runat="server" MaxLength="30" Font-Size="Medium"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Username can't be empty."  ForeColor="Red" ControlToValidate  ="txt_unm"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label id="lbl_pwd" CssClass="text-info" BorderStyle="None" Text="Password" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txt_pwd" CssClass="form-control" BorderStyle="Solid" runat="server" Font-Size="Medium" TextMode="Password" MaxLength="15"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Password can't be empty."  ForeColor="Red" ControlToValidate  ="txt_pwd"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>

                    <asp:TableCell ColumnSpan="3" HorizontalAlign="Right">
                        <asp:Button ID="btn_login"  OnClick="btn_login_Click"   CssClass="btn-success" BorderStyle="None" Text="Login"  Height="30px"  runat="server"></asp:Button>
                    </asp:TableCell>
                   
                </asp:TableRow>
            </asp:Table>
                <asp:TableCell HorizontalAlign="left">
                        <asp:Label ID="lbl_invalid_id_pwd" class="text-danger" Visible="false"   runat="server" Text=" Invalid Username or Password.  "></asp:Label>
                    </asp:TableCell>
            </h4>
                </center>
        </div>

    </form>
</body>
</html>
