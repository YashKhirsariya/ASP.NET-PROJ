<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Assign_Time_Logins.aspx.cs" Inherits="inWork_Assign_Time_Logins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork Assign Time & Login</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style2 {
            width: 233px;
        }
        .auto-style3 {
            width: 521px;
        }
    </style>


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
                       <li><a href="inWork_Staff_Attendance.aspx"><span class="glyphicon glyphicon-time"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">inWork Staff Attendance</h5>
                        </a></li>
                       
                        <li><a href="inWork_Add_Staff.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Add Staff</h5>
                        </a></li>
                        <li><a href="inWork_Add_Staff_Doc_Img.aspx"><span class="glyphicon glyphicon-upload"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Upload Staff Image & Documents</h5>
                        </a></li>
                        <li style="background-color: aquamarine"><a href="inWork_Assign_Time_Logins.aspx"><span class="glyphicon glyphicon-tags"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Assign Staff Time & Login</h5>
                        </a></li>                        
                          <li style=""><a href="inWork_Add_New_Designation.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Add New Designation</h5>
                        </a></li>
                          <li style=""><a href="inWork_Add_New_Leave.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Add New Leave</h5>
                        </a></li>
                        <li style=""><a href="inWork_Login.aspx"><span class="glyphicon glyphicon-log-out"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Admin Logout</h5>
                        </a></li>
                    </ul>
                </div>
                <hr />
            </div>
        </div>



        <div class="panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Assign Time & Login To Staff</h3>
            </div>
            <div class="jumbotron">  
                <center>       
                       <table id="tbl_add_desig" runat="server" class="table" style="width:650px">
                    <tr>
                        <td class="auto-style2">
                             <asp:Label id="lbl_staff_nm" CssClass="text-info" BorderStyle="None" Text="Staff Name" Font-Size="Medium" runat="server"></asp:Label>
                    
                       <asp:DropDownList ID="cmb_stf_nm" OnSelectedIndexChanged="cmb_stf_nm_SelectedIndexChanged"   runat="server" Width="200px" Height="30px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="stf_fnm" DataValueField="stf_fnm" ValidationGroup="q" ViewStateMode="Enabled" AppendDataBoundItems="True">
                           <asp:ListItem>Select Staff Name</asp:ListItem>
                             </asp:DropDownList>
                       <td align="center" class="auto-style3">
                                        <asp:Label CssClass="text-info" ID="lbl_in_time" runat="server" Text="Staff IN Time ( am )"></asp:Label>
                                        <asp:TextBox  CssClass="form-control" ID="txt_in_time" runat="server" placeholder="hh:mm" Width="100px" MaxLength="5"  ReadOnly="false" ValidationGroup="q"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="It can't be empty." ControlToValidate="txt_in_time" ForeColor="Red" ValidationGroup="q"></asp:RequiredFieldValidator><br />
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Format" ForeColor="Red" ControlToValidate="txt_in_time" ValidationExpression="[0-9]{2}\:[0-9]{2}" ValidationGroup="q"></asp:RegularExpressionValidator>
                          
                           </td>
                      </td>
                            
                                 <td align="left" >
                                        <asp:Label CssClass="text-info" ID="lbl_out_time" runat="server" Text="Staff OUT Time ( pm )"></asp:Label>
                                        <asp:TextBox  CssClass="form-control" ID="txt_out_time" runat="server" placeholder="hh:mm" Width="100px" ReadOnly="false" ValidationGroup="q"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="It can't be empty." ControlToValidate="txt_out_time" ForeColor="Red" ValidationGroup="q"></asp:RequiredFieldValidator><br />
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Format" ForeColor="Red" ControlToValidate="txt_out_time" ValidationExpression="[0-9]{2}\:[0-9]{2}" ValidationGroup="q"></asp:RegularExpressionValidator>
                                    </td>
                    </tr>
                           <tr>
                               <td>
                                   <asp:Label id="lbl_staff_unm" CssClass="text-info" BorderStyle="None" Text="Staff New Username" runat="server"></asp:Label>
                                     <asp:TextBox ID="txt_staff_unm" CssClass="form-control" BorderStyle="Solid" runat="server" MaxLength="30" ValidationGroup="q"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="It can't be empty." ControlToValidate="txt_staff_unm" ForeColor="Red" ValidationGroup="q"></asp:RequiredFieldValidator>
                    
                    
                               </td>
                               <td class="auto-style3">
                                   <asp:Label id="lbl_staff_pwd" CssClass="text-info" BorderStyle="None" Text="Staff New Password" runat="server"></asp:Label>
                                    <asp:TextBox ID="txt_new_pwd" CssClass="form-control" BorderStyle="Solid" runat="server" MaxLength="15" ValidationGroup="q"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="It can't be empty." ControlToValidate="txt_new_pwd" ForeColor="Red" ValidationGroup="q"></asp:RequiredFieldValidator>
                      
                               </td>
                               <td>
                                      <asp:Button ID="btn_add_staff" Text=" Assign Staff  " runat="server" CssClass="btn-success"  OnClick="btn_add_staff_Click"  Width="150px" Height="50px" ValidationGroup="q" />
                               </td>
                           </tr>
                           <tr>
                               <td>
                                      <asp:Label id="lbl_Status" CssClass="text-info" BorderStyle="None" Text=" Staff Assigned Succesfully. " Visible="False"  ForeColor="Green"   runat="server"></asp:Label>
                                    <asp:Label id="lbl_stf_name" CssClass="text-info" BorderStyle="None" Text="" runat="server"></asp:Label>
                               
                               </td>
                           </tr>
                        </table>
                    </center>
               
            </div>
            <center>
            
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT [stf_fnm] FROM [tbl_stf_basic_details_Master] WHERE ([stf_is_active] = @stf_is_active)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="false" Name="stf_is_active" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
               

                     </center>
 
        </div>
    </form>
</body>
</html>
