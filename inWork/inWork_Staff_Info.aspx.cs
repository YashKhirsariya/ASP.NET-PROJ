using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class inWork_Staff_Info : System.Web.UI.Page
{
    string stf_nm;
    string qry = "";
    string name = "";
    string cnstr = ConfigurationManager.ConnectionStrings["db_inWorkConnectionString"].ConnectionString;


    int i = 0;

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_session_nm.Text = Session["stf_name"].ToString();
        qry = "select * from dbo.tbl_staff_img_Master where img_stf_nm='"+lbl_session_nm.Text+"'";

        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry,cn);
        cn.Open();
        dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            name = dr["img_stf_img"].ToString();
        }
        cmd.Dispose();
        cn.Dispose();
        cn.Close();
        Image2.ImageUrl = name;
       


    }





}