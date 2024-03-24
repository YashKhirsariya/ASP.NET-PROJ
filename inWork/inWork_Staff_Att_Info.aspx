<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Staff_Att_Info.aspx.cs" Inherits="inWork_Staff_Att_Info" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Staff Attendance Information </title>
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
                         <li style="background-color: aquamarine"><a href="inWork_Staff_Att_Info.aspx"><span class="glyphicon glyphicon-list-alt"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Staff Attendance Information</h5>
                        </a></li>
                        <li><a href="inWork_Staff_Info.aspx"><span class="glyphicon glyphicon-info-sign"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Staff Information</h5>
                        </a></li>
                        <li><a href="inWork_Login.aspx"><span class="glyphicon glyphicon-log-out"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Staff Logout</h5>
                        </a></li>
                    </ul>

                </div>
                <hr />
            </div>

        </div>
        
          <div class="panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Staff Attendance Information<asp:Label ID="lbl_session_nm" runat="server" Visible="False"></asp:Label>
                </h3>

               
            </div>
              <div class="jumbotron">
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT [stf_nm], [sad_dt], [sad_in_time], [sad_out_time], [sad_lt_nm] FROM [tbl_staff_attendance_details] WHERE ([stf_nm] = @stf_nm)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lbl_session_nm" Name="stf_nm" PropertyName="Text" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                




        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-striped table-bordered table-condensed" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="stf_nm" HeaderText="Staff Name" SortExpression="stf_nm" />
                <asp:BoundField DataField="sad_dt" HeaderText="Date" SortExpression="sad_dt" />
                <asp:BoundField DataField="sad_in_time" HeaderText="IN Time ( AM )" SortExpression="sad_in_time" />
                <asp:BoundField DataField="sad_out_time" HeaderText="OUT Time ( PM )" SortExpression="sad_out_time" />
                <asp:BoundField DataField="sad_lt_nm" HeaderText="Leave Type" SortExpression="sad_lt_nm" />
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
        

    </form>
</body>
</html>
