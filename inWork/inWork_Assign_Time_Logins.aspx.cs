using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class inWork_Assign_Time_Logins : System.Web.UI.Page
{
    string qry1 = "";
    string qry2 = "";
    string qry3 = "";
    string qry4 = "";
    string qry5 = "";

    Boolean isActive = true;
    string cnstr = ConfigurationManager.ConnectionStrings["db_inWorkConnectionString"].ConnectionString;

    int i = 0;

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_stf_name.Visible = false;
    }
    protected void cmb_stf_nm_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        lbl_stf_name.Text = cmb_stf_nm.SelectedValue;
    }

    protected void btn_add_staff_Click(object sender, EventArgs e)
    {
        qry1 = "insert into dbo.tbl_staff_join_Master values";
        qry1 += "('"+lbl_stf_name.Text+"','"+txt_in_time.Text.ToString()+"',";
        qry1 += "'"+txt_out_time.Text.ToString()+"','"+isActive+"')";

        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry1,cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Dispose();
        cn.Close();

        qry2 = "insert into dbo.tbl_inwork_login values";
        qry2 += "('" + lbl_stf_name.Text + "','" + txt_staff_unm.Text.ToString() + "','" + txt_new_pwd.Text.ToString() + "','" + isActive + "')";

        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry2,cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Dispose();
        cn.Close();


        qry3 = "update dbo.tbl_stf_basic_details_Master set stf_is_active='"+isActive+"' where stf_fnm='"+lbl_stf_name.Text+"'";
        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry3, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Dispose();
        cn.Close();

        txt_in_time.Text = "";
        txt_out_time.Text = "";
        txt_staff_unm.Text = "";
        txt_new_pwd.Text = "";
        lbl_Status.Visible = true;
    }
    
}