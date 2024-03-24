<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Add_New_Designation.aspx.cs" Inherits="inWork_Add_New_Designation" %>


<Doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork Add Designation</title>
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
                         <li><a href="inWork_Staff_Attendance.aspx"><span class="glyphicon glyphicon-time"></span>
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
                          <li  style="background-color: aquamarine"><a href="inWork_Add_New_Designation.aspx"><span class="glyphicon glyphicon-plus-sign"></span>
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
                <h3 class="panel-title">Add New Designation</h3>
            </div>
            <div class="jumbotron">
                <center>
                <table id="tbl_add_desig" runat="server" class="table-condensed" style="width:400px">
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_designation_name" runat="server" Width="300px" placeholder="Enter New Designation" CssClass="form-control" MaxLength="30"   Font-Size="Medium" ValidationGroup="abc"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Designation Name." ForeColor="Red" ControlToValidate="txt_designation_name" ValidationGroup="abc"></asp:RequiredFieldValidator>

                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_designation_desc" runat="server" Height="90px"    TextMode="MultiLine"   Width="400px" placeholder="Designation Description" MaxLength="100" CssClass="form-control" Font-Size="Medium" ValidationGroup="abc"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Designation Description." ForeColor="Red" ControlToValidate="txt_designation_desc" ValidationGroup="abc"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                        <asp:Button ID="btn_add_designation" OnClick="btn_add_designation_Click"   runat="server" Text="Add Designation" Width="140px" Height="40px" class="btn-success" Font-Size="Medium" ValidationGroup="abc"/>
                            <asp:Label ID="lbl_status" Text="Designation Added" runat="server" CssClass="text-success"></asp:Label>
                            </td>
                    </tr>
                </table>
                    </center>
            </div>
        </div>
         <div class="panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <center>Types Of Designations</center></h3>
            </div>
            <div class="jumbotron">
                <center>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" DeleteCommand="DELETE FROM [tbl_designation_Master] WHERE [des_id] = @des_id" InsertCommand="INSERT INTO [tbl_designation_Master] ([des_name], [des_desc], [des_is_active]) VALUES (@des_name, @des_desc, @des_is_active)" SelectCommand="SELECT * FROM [tbl_designation_Master]" UpdateCommand="UPDATE [tbl_designation_Master] SET [des_name] = @des_name, [des_desc] = @des_desc, [des_is_active] = @des_is_active WHERE [des_id] = @des_id">
                        <DeleteParameters>
                            <asp:Parameter Name="des_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="des_name" Type="String" />
                            <asp:Parameter Name="des_desc" Type="String" />
                            <asp:Parameter Name="des_is_active" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="des_name" Type="String" />
                            <asp:Parameter Name="des_desc" Type="String" />
                            <asp:Parameter Name="des_is_active" Type="Boolean" />
                            <asp:Parameter Name="des_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Solid" CellPadding="4" CssClass="table table-striped table-bordered table-condensed" DataKeyNames="des_id" DataSourceID="SqlDataSource1" Font-Size="Medium" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="des_id" HeaderText="Designation ID" InsertVisible="False" ReadOnly="True" SortExpression="des_id">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="des_name" HeaderText="Designation Name" SortExpression="des_name">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="des_desc" HeaderText="Designation Description" SortExpression="des_desc" />
                            <asp:CheckBoxField DataField="des_is_active" HeaderText="Designtion isActive" SortExpression="des_is_active" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    
            </center>
                </div></div>
        </form>
        </body>
    </html>