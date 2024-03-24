<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Staff_Info.aspx.cs" Inherits="inWork_Staff_Info" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Staff Information </title>
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
                         <li><a href="inWork_Staff_Att_Info.aspx"><span class="glyphicon glyphicon-list-alt"></span>
                            <h5 class="text-primary" style="font-family:'Segoe UI'">Staff Attendance Information</h5>
                        </a></li>
                        <li style="background-color: aquamarine"><a href="inWork_Staff_Info.aspx"><span class="glyphicon glyphicon-info-sign"></span>
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
                <h3 class="panel-title">Staff Information<asp:Label ID="lbl_session_nm" runat="server" Visible="False"></asp:Label>
                </h3>

               
            </div>
              <div class="jumbotron">
                
                    <div class="container-fluid">
                
                  <asp:Image ID="Image2" CssClass="img-rounded"  runat="server" Height="150px" Width="150px" />
                <hr />
                 
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT * FROM [tbl_stf_basic_details_Master] WHERE ([stf_fnm] = @stf_fnm)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lbl_session_nm" Name="stf_fnm" PropertyName="Text" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                
                 
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="stf_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table table-striped table-bordered table-condensed" BorderStyle="Solid">
                      <AlternatingRowStyle BackColor="White" BorderStyle="None" />
                      <Columns>
                          <asp:BoundField DataField="stf_fnm" HeaderText="First Name" SortExpression="stf_fnm" />
                          <asp:BoundField DataField="stf_mnm" HeaderText="Middle Name" SortExpression="stf_mnm" />
                          <asp:BoundField DataField="stf_lnm" HeaderText="Last Name" SortExpression="stf_lnm" />
                          <asp:BoundField DataField="stf_per_addr" HeaderText="Permanent Address" SortExpression="stf_per_addr" />
                          <asp:BoundField DataField="stf_cur_addr" HeaderText="Current Address" SortExpression="stf_cur_addr" />
                          <asp:BoundField DataField="stf_gender" HeaderText="Gender" SortExpression="stf_gender" />
                          <asp:BoundField DataField="stf_age" HeaderText="Age" SortExpression="stf_age" />
                          <asp:BoundField DataField="stf_city" HeaderText="City" SortExpression="stf_city" />
                          <asp:BoundField DataField="stf_state" HeaderText="State" SortExpression="stf_state" />
                          <asp:BoundField DataField="stf_lnd_num" HeaderText="Landline No." SortExpression="stf_lnd_num" />
                          <asp:BoundField DataField="stf_mob_num" HeaderText="Moblie No." SortExpression="stf_mob_num" />
                          <asp:BoundField DataField="stf_email_id" HeaderText="Email ID" SortExpression="stf_email_id" />
                          <asp:BoundField DataField="stf_web_url" HeaderText="Web URL" SortExpression="stf_web_url" />
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
                <hr />
        
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT [stf_nm], [stf_in_time], [stf_out_time] FROM [tbl_staff_join_Master] WHERE ([stf_nm] = @stf_nm)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="lbl_session_nm" Name="stf_nm" PropertyName="Text" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>

              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-striped table-bordered table-condensed" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="stf_in_time" HeaderText="Staff IN Time (AM)" SortExpression="stf_in_time" />
                <asp:BoundField DataField="stf_out_time" HeaderText="Staff OUT Time (PM)" SortExpression="stf_out_time" />
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
