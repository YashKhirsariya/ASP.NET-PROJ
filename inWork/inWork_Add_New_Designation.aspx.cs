﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class inWork_Add_New_Designation : System.Web.UI.Page
{
    string qry = "";
    string name = "";
   
    int i = 0;

    string cnstr = ConfigurationManager.ConnectionStrings["db_inWorkConnectionString"].ConnectionString;

    SqlConnection cn;
    SqlCommand cmd;
    Boolean active = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_status.Visible = false;
    }
    protected void btn_add_designation_Click(object sender, EventArgs e)
    {
        qry = "insert into dbo.tbl_designation_Master values('"+txt_designation_name.Text+"','"+txt_designation_desc.Text+"','"+active+"')";


        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry,cn);
        cn.Open();
        i=cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Dispose();
        cn.Close();
        if(i==1)
        {
            lbl_status.Visible = true;
            txt_designation_name.Text = "";
            txt_designation_desc.Text = "";
            txt_designation_name.Focus();
         
        }
        lbl_status.Visible = false;
        GridView1.DataBind();
    }
}