using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class inWork_Login : System.Web.UI.Page
{
    string qry = "";
    string name = "";
    string cnstr = ConfigurationManager.ConnectionStrings["db_inWorkConnectionString"].ConnectionString;
   
    int i = 0;
    
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {
        name = Environment.MachineName;
        txt_unm.Focus();
       
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
      
        qry = "select * from dbo.tbl_inwork_login where inwork_unm='" + txt_unm.Text.Trim().ToString() + "' and inwork_pwd='" + txt_pwd.Text.Trim().ToString() + "'";
        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry, cn);
        cn.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            i += 1;
            Session["stf_name"] = dr["inwork_stf_nm"].ToString();      
        }
       
        cmd.Dispose();
        cn.Dispose();
        cn.Close();
        
        if (i == 1)
        {
            if (txt_unm.Text.Equals("kotharimihir07"))
            {
                Response.Redirect("~/inWork_Add_Staff.aspx");
            }
            else
            {
                Response.Redirect("~/inWork_Staff_Info.aspx");
            }
        }
        txt_unm.Text = "";
        txt_pwd.Text = "";
        txt_unm.Focus();
        lbl_invalid_id_pwd.Visible = true;
    }
}   