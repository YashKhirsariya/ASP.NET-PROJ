<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inWork_Types_Of_Leave.aspx.cs" Inherits="inWork_Types_Of_Leaves" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>inWork Types Of Leave </title>
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
                        <li style="background-color:aquamarine"><a href="inWork_Types_Of_Leave.aspx"><span class="glyphicon glyphicon-list-alt"></span><h4 class="text-primary"  style="font-family:'Segoe UI'">Types Of Leaves</h4></a></li>
                        <li><a href="inWork_Staff_Designations.aspx"><span class="glyphicon glyphicon-list"></span><h4 class="text-primary"  style="font-family:'Segoe UI'">Staff Designations</h4></a></li>
                        <li><a href="inWork_About_inWork.aspx"><span class="glyphicon glyphicon-info-sign"></span><h4 class="text-primary" style="font-family:'Segoe UI'">About inWork</h4></a></li>
                        <li><a href="inWork_About_Developer.aspx"><span class="glyphicon glyphicon-user"></span><h4 class="text-primary" style="font-family:'Segoe UI'">About Developer</h4></a></li>
                        <li><a href="inWork_Login.aspx"><span class="glyphicon glyphicon-log-in"></span><h4 class="text-primary" style="font-family:'Segoe UI'">inWork Login</h4></a></li>
                    </ul>
                    
                </div>
                <hr />  
            </div>
            
        </div>
        <div class="panel-primary">
                <div class="panel-body">
                    <div class="jumbotron">
                        <center>
                 <h2><span class="glyphicon glyphicon-list-alt"></span> Types Of Leaves</h2>
                    </center>
                        <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_inWorkConnectionString %>" SelectCommand="SELECT * FROM [tbl_leave_type_Master]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-striped table-bordered table-condensed" DataKeyNames="lt_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="lt_id" HeaderText="Leave ID" InsertVisible="False" ReadOnly="True" SortExpression="lt_id" />
                <asp:BoundField DataField="lt_name" HeaderText="Leave Type" SortExpression="lt_name" />
                <asp:BoundField DataField="lt_desc" HeaderText="Leave Description" SortExpression="lt_desc" />
                <asp:CheckBoxField DataField="lt_is_active" HeaderText="Leave Active" SortExpression="lt_is_active" />
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
            </div></div>
    </form>
</body>
</html>
