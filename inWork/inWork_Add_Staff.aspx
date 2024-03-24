<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Add_Staff.aspx.cs" Inherits="inWork_Add_Staff" %>

<doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork Add Staff</title>
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
                            <h5 class="text-primary"style="font-family:'Segoe UI'">inWork Staff Attendance</h5>
                        </a></li>
                       
                        <li style="background-color: aquamarine"><a href="inWork_Add_Staff.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary"style="font-family:'Segoe UI'">Add Staff</h5>
                        </a></li>
                        <li><a href="inWork_Add_Staff_Doc_Img.aspx"><span class="glyphicon glyphicon-upload"></span>
                            <h5 class="text-primary"style="font-family:'Segoe UI'">Upload Staff Image & Documents</h5>
                        </a></li>
                        <li><a href="inWork_Assign_Time_Logins.aspx"><span class="glyphicon glyphicon-tags"></span>
                            <h5 class="text-primary"style="font-family:'Segoe UI'">Assign Staff Time & Login</h5>
                        </a></li>                        
                          <li style=""><a href="inWork_Add_New_Designation.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary"style="font-family:'Segoe UI'">Add New Designation</h5>
                        </a></li>
                          <li style=""><a href="inWork_Add_New_Leave.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
                            <h5 class="text-primary"style="font-family:'Segoe UI'">Add New Leave</h5>
                        </a></li>
                        <li style=""><a href="inWork_Login.aspx"><span class="glyphicon glyphicon-log-out"></span>
                            <h5 class="text-primary"style="font-family:'Segoe UI'">Admin Logout</h5>
                        </a></li>
                    </ul>
                </div>
                <hr />
            </div>
        </div>


        <div class="panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Add Staff Basic Details</h3>
            </div>
            <div class="panel-body">     
            <table id="Table1" runat="server" class="table-condensed" style="width:1200px;height:10px">
                <tr>
                    <td>
                        <asp:TextBox ID="txt_stf_fnm" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="200px" runat="server" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name." ControlToValidate="txt_stf_fnm" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_stf_mnm" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="200px" runat="server" placeholder="Middle Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Middle Name." ControlToValidate="txt_stf_mnm" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                    <td>
                        <asp:TextBox ID="txt_stf_lnm" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="200px" runat="server" placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Last Name." ControlToValidate="txt_stf_lnm" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>

                    <td>
                        <asp:TextBox ID="txt_per_addr" CssClass="form-control" Font-Size="Medium" MaxLength="200" Height="70px" Width="340px" runat="server" placeholder="Permanent Address" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Permanent Address." ControlToValidate="txt_per_addr" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                    </td>
                    <td>
                        <asp:TextBox ID="txt_curr_addr" CssClass="form-control" Font-Size="Medium" MaxLength="200" Height="70px" Width ="340px" runat="server" placeholder="Current Address" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Current Address." ControlToValidate="txt_curr_addr" ForeColor="Red"></asp:RequiredFieldValidator> 
                    </td>
                </tr>
            </table>
        </div>
        </div>
            
             <div class="panel-primary">
                 <div class="panel-primary"
                      <div class="container-fluid">

                            <table id="Table2" runat="server" class="table" style="width: 900px; height: 10px">
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rdb_male" Checked="true" Text="Male" runat="server" GroupName="stf_gender" Font-Size="Small" />
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="rdb_female" Text="Female" runat="server" GroupName="stf_gender" Font-Size="Small" />
                                    </td>

                                    <td align="center">
                                        <asp:TextBox ID="txt_stf_age" CssClass="form-control" runat="server" MaxLength="2" TextMode="SingleLine" Width="50px" Placeholder="Age"></asp:TextBox>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must in between 20 to 60" ControlToValidate="txt_stf_age" MinimumValue="20" MaximumValue="60" SetFocusOnError="True" ForeColor="Red"></asp:RangeValidator>
                                    </td>

                                    <td align="left">
                                        <asp:TextBox ID="txt_city" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="100px" runat="server" placeholder="City"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter City." ControlToValidate="txt_city" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txt_state" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="130px" runat="server" placeholder="State"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter State" ControlToValidate="txt_state" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txt_lnd_no" CssClass="form-control" Font-Size="small" MaxLength="7" Width="200px" runat="server" placeholder="Landline No.(2753***)"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage=" Invalid Landline Number. " ForeColor="Red" ValidationExpression="[0-9]{7}" ControlToValidate="txt_lnd_no"></asp:RegularExpressionValidator>

                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txt_mob_numb" CssClass="form-control" Font-Size="medium" MaxLength="10" Width="200px" runat="server" placeholder="Mobile No.(83473*****)"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" Invalid Mobile Number. " ForeColor="Red" ValidationExpression="[0-9]{10}" ControlToValidate="txt_mob_numb"></asp:RegularExpressionValidator>
                                    </td>

                                    <td align="left">
                                        <asp:TextBox ID="txt_email" CssClass="form-control" Font-Size="small" MaxLength="30" Width="220px" runat="server" placeholder="Email ID(anand22@gmail.com)"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage=" Invalid Email-ID Format . " ForeColor="Red" ValidationExpression="\w+([.']\w+)*@\w+([.]\w+)*\.\w+([.]\w+)*" ControlToValidate="txt_email"></asp:RegularExpressionValidator>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="txt_weburl" CssClass="form-control" Font-Size="small" MaxLength="25" Width="200px" runat="server" placeholder="www.Abcxyz.com"></asp:TextBox>

                                    </td>
                                </tr>
                            </table>
                </div> 
                  </div>
              </div>


                 <div class="panel-primary">
                     <div class="panel-heading">
                         <div class="panel-title">Add Staff Professional Details</div>
                     </div>
                     <div class="panel-body">
                         <table id="Table3" runat="server" class="table" style="width:1200px;height:10px">
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_org" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="200px" runat="server" placeholder="Organisation Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Organisation Name." ControlToValidate="txt_org" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                       <asp:Label ID="lbl_des" runat="server" ></asp:Label>
                        <asp:DropDownList ID="cmb_desig" runat="server" Height="35px" Width="207px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="des_name" DataValueField="des_name" OnSelectedIndexChanged="cmb_desig_SelectedIndexChanged" AppendDataBoundItems="True">
                           

                        </asp:DropDownList>
                       <h5 class="text-primary"><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT [des_name] FROM [tbl_designation_Master]"></asp:SqlDataSource>
                        </h5>
                        
                    </td>
                    
                         <td class="auto-style1">
                        <asp:TextBox ID="txt_j_dt" AutoPostBack="true" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="200px" runat="server" placeholder="Staff Joining Date" ValidationGroup="calenderval" ReadOnly="true"></asp:TextBox>
                             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/inWork_Images/calendar.png" OnClick="ImageButton1_Click" Width="22px" ValidationGroup="calenderval"/>
                             <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                 <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                 <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                 <OtherMonthDayStyle ForeColor="#999999" />
                                 <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                 <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                 <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                 <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                 <WeekendDayStyle BackColor="#CCCCFF" />
                             </asp:Calendar>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Select Joining Date" ControlToValidate="txt_j_dt" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>

                         <td>
                        <asp:TextBox ID="txt_l_dt" CssClass="form-control" Font-Size="Medium" MaxLength="15" Width="200px" runat="server" placeholder="Staff Leave Date" ValidationGroup="calenderval1" ReadOnly="true"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton2" ImageUrl="~/inWork_Images/calendar.png" runat="server" Width="22px" ValidationGroup="calenderval1" OnClick="ImageButton2_Click" />
                            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                             </asp:Calendar>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Select Leave Date" ControlToValidate="txt_l_dt" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                    <td>
                     <asp:TextBox ID="txt_experience" CssClass="form-control" BorderStyle="Solid" runat="server" Width="150px" MaxLength="2" placeholder="Experience(Years)" Font-Size="Small"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter Experience." ControlToValidate="txt_experience" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      </table>
                     </div>
                 </div>
                 

                 <div class="panel-primary">
                     <div class="panel-heading">
                         <div class="panel-title">Add Staff Qualification Details</div>
                     </div>
                     <div class="panel-body">
                         <table id="Table4" runat="server" class="table" style="width: 1300px; height: 10px">
                             <tr>
                                 <td>
                                     <asp:TextBox ID="txt_qualification" runat="server" MaxLength="15" Width="200px" CssClass="form-control" TextMode="SingleLine" placeholder="Staff Qualification"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter Qualification." ControlToValidate="txt_qualification" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </td>
                                 
                                 <td>
                                     <asp:TextBox ID="txt_ins_nm" runat="server" MaxLength="30" Width="200px" CssClass="form-control" TextMode="SingleLine" placeholder="Institute Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Enter Institute." ControlToValidate="txt_ins_nm" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </td>
                                 
                                 <td>
                                     <asp:TextBox ID="txt_uni" runat="server" MaxLength="30" Width="200px" CssClass="form-control" TextMode="SingleLine" placeholder="University Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Enter University." ControlToValidate="txt_uni" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </td>
                                  <td>
                                     <asp:TextBox ID="txt_pass_yr" runat="server" MaxLength="4" Width="100px" CssClass="form-control" TextMode="SingleLine" placeholder="Pass Year"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Enter Pass Year." ControlToValidate="txt_pass_yr" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="txt_tot_marks" runat="server" MaxLength="4" Width="100px" CssClass="form-control" TextMode="SingleLine" Font-Size="Small"   placeholder="Total Marks"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Enter Total Marks." ControlToValidate="txt_pass_yr" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </td>
                                 <td>
                                     <asp:TextBox ID="txt_obt_marks" runat="server" MaxLength="4" Width="130px" CssClass="form-control" TextMode="SingleLine" Font-Size="Small"   placeholder="Obtained Marks"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Enter Obtained Marks." ControlToValidate="txt_pass_yr" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </td>
                                   <td>
                     <asp:RadioButton ID="rdb_f_class" Checked="true" Text="1st Class" runat="server" GroupName="class" Font-Size="Small" />
                        </td>
                     <td>
                        <asp:RadioButton ID="rdb_s_class" Text="2nd Class" runat="server" GroupName="class" Font-Size="Small" />
                         </td>
                       <td align="right">
                    <asp:Button ID="btn_add_staff" Text=" Add Staff " runat="server" CssClass="btn-success" Width="140px" Height="47px" OnClick="btn_add_staff_Click" />
                </td>
                           
                             </tr>
                           
                         </table>
                     </div>
                 </div>
                <asp:TextBox  Visible="false" CssClass="form-control" ID="txt_stf_desig" runat="server" placeholder="" Width="200px" ReadOnly="true"></asp:TextBox>
                
                </div>
    </form>
</body>
</html>
