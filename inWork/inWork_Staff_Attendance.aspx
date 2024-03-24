<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Staff_Attendance.aspx.cs" Inherits="inWork_Staff_Attendance" %>

<!DOCTYPE html>

<Doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork Staff Attendance</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
</head>

<body>
    <form id="form2" runat="server">

     <div class="navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">
                        <asp:Image ID="Image1" CssClass="img-responsive" ImageUrl="~/inWork_Images/inWork_Logo/inWork_Logo.jpg" ImageAlign="Left" runat="server"
                            Height="70px" Width="164px" /></a>

                </div>
                <div class="container-fluid">
                    <ul class="nav navbar-nav navbar-right">
                          <li style="background-color: aquamarine"><a href="inWork_Staff_Attendance.aspx"><span class="glyphicon glyphicon-time"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">inWork Staff Attendance</h5>
                        </a></li>
                        <li><a href="inWork_Add_Staff.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Add Staff</h5>
                        </a></li>
                        <li><a href="inWork_Add_Staff_Doc_Img.aspx"><span class="glyphicon glyphicon-upload"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Upload Staff Image & Documents</h5>
                        </a></li>
                        <li><a href="inWork_Assign_Time_Logins.aspx"><span class="glyphicon glyphicon-tags"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Assign Staff Time & Login</h5>
                        </a></li>
                         <li><a href="inWork_Add_New_Designation.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
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
        <div align="right" class="container-fluid">
                        <asp:Label ID="lbl_dt" Font-Size="Large" runat="server" Text="Date :"></asp:Label>
            <asp:Label ID="lbl_todays_dt" Font-Size="Large" runat="server" Text="Label"></asp:Label>

        </div>
         <center>
<div class="panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Add Staff Attendance</h3>
            </div>
            <div class="jumbotron">     
            <table id="Table1" runat="server" class="table" style="width:900px;height:10px">
                <tr>
                    <td align="left">
                               <asp:Label CssClass="text-info" ID="Label1" runat="server" Text="Staff Name"></asp:Label>
                        <br />
                        <asp:DropDownList ID="cmb_stf_nm" Width="220px" Height="27px"  runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="stf_nm" DataValueField="stf_nm" OnSelectedIndexChanged="cmb_stf_nm_SelectedIndexChanged" ValidationGroup="lol">
                            <asp:ListItem>Select Staff Name</asp:ListItem>
                        </asp:DropDownList><br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Staff Name" ControlToValidate="cmb_stf_nm" ForeColor="Red" ValidationGroup="lol"></asp:RequiredFieldValidator>
                       
                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT [stf_nm] FROM [tbl_staff_join_Master]"></asp:SqlDataSource>
                        
                       
                    </td>
                     <td align="left">
                                         <asp:Label CssClass="text-info" ID="Label3" runat="server" Text="Staff IN Time ( am )"></asp:Label>
                                        <asp:TextBox  CssClass="form-control" ID="txt_in" runat="server" placeholder="hh:mm" Width="100px" ReadOnly="false" ValidationGroup="lol" MaxLength="5"></asp:TextBox>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Format" ForeColor="Red" ControlToValidate="txt_in" ValidationExpression="[0-9]{2}\:[0-9]{2}" ValidationGroup="lol"></asp:RegularExpressionValidator>
                        </td>
                    <td align="left">
                                          <asp:Label CssClass="text-info" ID="Label4" runat="server" Text="Staff OUT Time ( pm )"></asp:Label>
                                        <asp:TextBox  CssClass="form-control" ID="txt_out" runat="server" placeholder="hh:mm" Width="100px" ReadOnly="false" ValidationGroup="lol" MaxLength="5"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Format" ForeColor="Red" ControlToValidate="txt_out" ValidationExpression="[0-9]{2}\:[0-9]{2}" ValidationGroup="lol"></asp:RegularExpressionValidator>
                        </td>
                    <td align="left">
                                        <asp:Label CssClass="text-info" ID="lbl_in_time" runat="server" Text="Staff IN Time ( am )"></asp:Label>
                                        <asp:TextBox    CssClass="form-control" ID="txt_in_time" runat="server" placeholder="hh:mm" Width="100px" MaxLength="5"  ReadOnly="true" ValidationGroup="q"></asp:TextBox>
                        <br />
                                          <asp:Label CssClass="text-info" ID="lbl_out_time" runat="server" Text="Staff OUT Time ( pm )"></asp:Label>
                                        <asp:TextBox  CssClass="form-control" ID="txt_out_time" runat="server" placeholder="hh:mm" Width="100px" ReadOnly="true" ValidationGroup="q"></asp:TextBox>
                                 
                        </td>
                    
                       
                </tr>
                </table>
                  <table id="Table2" runat="server" class="table" style="width:900px;height:10px">
               <tr>
                     <td class="auto-style1">
                        <asp:TextBox ID="txt_att_dt" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="200px" runat="server" placeholder="Attendance Date" ValidationGroup="akak" ReadOnly="true"></asp:TextBox>
                             <asp:ImageButton ID="ImageButton1"  OnClick="ImageButton1_Click"  runat="server" ImageUrl="~/inWork_Images/calendar.png" Width="22px" ValidationGroup="calenderval"/>
                             <asp:Calendar ID="Calendar1"  OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                 <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                 <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                 <OtherMonthDayStyle ForeColor="#999999" />
                                 <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                 <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                 <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                 <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                 <WeekendDayStyle BackColor="#CCCCFF" />
                             </asp:Calendar>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Select Attendance Date" ControlToValidate="txt_att_dt" ForeColor="Red" ValidationGroup="akak"></asp:RequiredFieldValidator>
                     </td>
                    <td align="left"> 
                                <asp:Label id="lbl_leave_type" CssClass="text-info" BorderStyle="None" Text="Leave Type" Font-Size="Medium" runat="server"></asp:Label>
                                <asp:DropDownList ID="cmb_leave_types"  runat="server" Width="245px" Height="30px" AutoPostBack="True"  AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="lt_name" DataValueField="lt_name" OnSelectedIndexChanged="cmb_leave_types_SelectedIndexChanged" ValidationGroup="lol">
                                    <asp:ListItem>Select Type</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Leave Type" ControlToValidate="cmb_leave_types" ForeColor="Red" ValidationGroup="lol" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT [lt_name] FROM [tbl_leave_type_Master]"></asp:SqlDataSource>
                        <asp:Button ID="btn_add_attendance" Text=" Add Attendance " runat="server" CssClass="btn-success" Width="140px" Height="40px" OnClick="btn_add_attendance_Click" ValidationGroup="lol"/>
                            </td>
                   <td>
                      
                   </td>
               </tr>
             </table>
         </div></div>
        <center>
        <div class="panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Staff Attendance</h3>
            </div>
            <div class="jumbotron">  

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT * FROM [tbl_staff_attendance_details]" DeleteCommand="DELETE FROM [tbl_staff_attendance_details] WHERE [sad_id] = @sad_id" InsertCommand="INSERT INTO [tbl_staff_attendance_details] ([stf_nm], [sad_dt], [sad_in_time], [sad_out_time], [sad_lt_nm], [sad_is_active]) VALUES (@stf_nm, @sad_dt, @sad_in_time, @sad_out_time, @sad_lt_nm, @sad_is_active)" UpdateCommand="UPDATE [tbl_staff_attendance_details] SET [stf_nm] = @stf_nm, [sad_dt] = @sad_dt, [sad_in_time] = @sad_in_time, [sad_out_time] = @sad_out_time, [sad_lt_nm] = @sad_lt_nm, [sad_is_active] = @sad_is_active WHERE [sad_id] = @sad_id">
                    <DeleteParameters>
                        <asp:Parameter Name="sad_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="stf_nm" Type="String" />
                        <asp:Parameter Name="sad_dt" Type="String" />
                        <asp:Parameter Name="sad_in_time" Type="String" />
                        <asp:Parameter Name="sad_out_time" Type="String" />
                        <asp:Parameter Name="sad_lt_nm" Type="String" />
                        <asp:Parameter Name="sad_is_active" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="stf_nm" Type="String" />
                        <asp:Parameter Name="sad_dt" Type="String" />
                        <asp:Parameter Name="sad_in_time" Type="String" />
                        <asp:Parameter Name="sad_out_time" Type="String" />
                        <asp:Parameter Name="sad_lt_nm" Type="String" />
                        <asp:Parameter Name="sad_is_active" Type="Boolean" />
                        <asp:Parameter Name="sad_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1"  CssClass="table table-striped table-bordered table-condensed"  runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sad_id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="stf_nm" HeaderText="Staff Name" SortExpression="stf_nm" />
                        <asp:BoundField DataField="sad_dt" HeaderText="Date" SortExpression="sad_dt" />
                        <asp:BoundField DataField="sad_in_time" HeaderText="Staff IN Time" SortExpression="sad_in_time" />
                        <asp:BoundField DataField="sad_out_time" HeaderText="Staff OUT Time" SortExpression="sad_out_time" />
                        <asp:BoundField DataField="sad_lt_nm" HeaderText="Leave Type" SortExpression="sad_lt_nm" />
                        <asp:CheckBoxField DataField="sad_is_active" HeaderText="Attendance Taken" SortExpression="sad_is_active" />
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>

                </div>
            </div>
        </center>

        </form>
        </body>
    </html>