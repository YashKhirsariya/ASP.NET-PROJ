<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Add_Staff_Doc_Img.aspx.cs" Inherits="inWork_Add_Staff_Doc_Img" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork Upload Docs & Image</title>
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
                     <li><a href="inWork_Staff_Attendance.aspx"><span class="glyphicon glyphicon-time"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">inWork Staff Attendance</h5>
                        </a></li>
                       
                        <li><a href="inWork_Add_Staff.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Add Staff</h5>
                        </a></li>
                        <li style="background-color: aquamarine"><a href="inWork_Add_Staff_Doc_Img.aspx"><span class="glyphicon glyphicon-upload"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Upload Staff Image & Documents</h5>
                        </a></li>
                        <li><a href="inWork_Assign_Time_Logins.aspx"><span class="glyphicon glyphicon-tags"></span>
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
                <h3 class="panel-title">Upload Staff Image & Document</h3>
            </div>
            <div class="jumbotron">
                <center>
                         
                       <table id="tbl_add_desig" runat="server" class="table-condensed" style="width:100px">
                        <tr>
                            <td align="left"> 
                                <asp:Label id="lbl_staff_nm" CssClass="text-info" BorderStyle="None" Text="Staff Name" Font-Size="Medium" runat="server"></asp:Label>
                                <asp:DropDownList ID="cmb_stf_nm"  runat="server" Width="245px" Height="30px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="stf_fnm" DataValueField="stf_fnm" OnSelectedIndexChanged="cmb_stf_nm_SelectedIndexChanged" AppendDataBoundItems="True">
                                    <asp:ListItem>Select Staff Name</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                       </tr>

                           <tr>
                               <td>
                                    <asp:Label ID="lbl_upld_img" Text="Staff Image" runat="server" CssClass="text-left"></asp:Label>
                             <asp:FileUpload ID="fupld_staff_img" runat="server" Width="330px" BorderStyle="Groove" BorderWidth="1px"></asp:FileUpload>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select File To Upload." ControlToValidate="fupld_staff_img" ForeColor="Red"></asp:RequiredFieldValidator>  
                                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Navy"></asp:Label>
                               </td>
                           </tr>
                    

                           <tr>
                               <td>
                                     <asp:Label ID="lbl_upld_doc" Text="Staff Document" runat="server" CssClass="text-left"></asp:Label>
                                       <asp:TextBox ID="txt_doc_name" CssClass="form-control"  placeholder="Document Name" runat="server" Width="200px"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Document Name." ControlToValidate="txt_doc_name" ForeColor="Red"></asp:RequiredFieldValidator>  
                                  
                                   <br />
                                    	<asp:FileUpload ID="fupld_staff_doc" runat="server" Width="330px" BorderStyle="Groove" BorderWidth="1px"></asp:FileUpload>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select File To Upload." ControlToValidate="fupld_staff_doc" ForeColor="Red"></asp:RequiredFieldValidator>  
                                     <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Navy"></asp:Label>
                                   <br />
                                <asp:Button ID="btn_upload" OnClick="btn_upload_Click"  Text="Upload" Width="100px" Height="40px" CssClass="btn-success" runat="server" />
                                   
                               </td>
                            
                           </tr>
                           <tr>
                               <td align="center">

                                  <asp:Label id="lbl_sel_staff_nm" CssClass="text-info" BorderStyle="None" Font-Size="Medium" runat="server" Visible="False"></asp:Label>
                    
                                 <asp:Label ID="lbl_upld_status" runat="server"  Font-Size="Medium"  Text="File Uploaded." CssClass="text-success" Visible="false"></asp:Label> 
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT [stf_fnm] FROM [tbl_stf_basic_details_Master] WHERE ([stf_is_active] = @stf_is_active)">
                                       <SelectParameters>
                                           <asp:Parameter DefaultValue="false" Name="stf_is_active" Type="Boolean" />
                                       </SelectParameters>
                                   </asp:SqlDataSource>
                                   </td>
                                 </tr>

                           </table>
                   </center>
            </div>

        </div>


    </form>
</body>
</html>

