using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class inWork_Add_Staff : System.Web.UI.Page
{

    string qry1 = "";
    string qry2 = "";
    string qry3 = "";
    string qry4 = "";
    string qry5 = "";

    string cnstr = ConfigurationManager.ConnectionStrings["db_inWorkConnectionString"].ConnectionString;

    int i = 0;

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
   



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = false;
        }
     
       txt_stf_desig.Text = "Lecturer";
       lbl_des.Visible = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        RequiredFieldValidator11.Visible = false;
        if (Calendar1.Visible == false)
        {
            Calendar1.Visible = true;
        }
        else
        {
            Calendar1.Visible = false;
        }

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txt_j_dt.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        RequiredFieldValidator12.Visible = false;
        if (Calendar2.Visible == false)
        {
            Calendar2.Visible = true;
        }
        else
        {
            Calendar2.Visible = false;
        }
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txt_l_dt.Text = Calendar2.SelectedDate.ToString("d");
        Calendar2.Visible = false;
    }

    protected void cmb_desig_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_des.Text = cmb_desig.Text.ToString();
        txt_curr_addr.Text = lbl_des.Text;
    }

    protected void btn_add_staff_Click(object sender, EventArgs e)
    {

        string gender;
        int stf_class;
        Boolean isActive=false;
        if(rdb_male.Checked)
        {
            gender="M";
        }
        else
        {
            gender="F";
        }
        if(rdb_f_class.Checked)
        {
            stf_class=1;
        }
        else
        {
            stf_class=2;
        }

        qry1 = "insert into dbo.tbl_stf_basic_details_Master values";
        qry1 += "('"+txt_stf_fnm.Text.Trim().ToString()+"','"+txt_stf_mnm.Text.Trim().ToString()+"',";
        qry1 += "'"+txt_stf_lnm.Text.Trim().ToString()+"','"+txt_per_addr.Text.Trim().ToString()+"',";
        qry1 += "'"+txt_curr_addr.Text.Trim().ToString()+"','"+gender.ToString()+"','"+txt_stf_age.Text.Trim().ToString()+"',";
        qry1 += "'"+txt_city.Text.Trim().ToString()+"','"+txt_state.Text.Trim().ToString()+"','"+txt_lnd_no.Text+"',";
        qry1 += "'"+txt_mob_numb.Text+"','"+txt_email.Text.Trim().ToString()+"',";
        qry1+="'"+txt_weburl.Text.Trim().ToString()+"','"+isActive.ToString()+"')";

        qry2 = "insert into dbo.tbl_stf_prof_details_Master values";
        qry2 += "('"+txt_org.Text.Trim().ToString()+"',";
        qry2 += "'"+lbl_des.Text.Trim().ToString()+"','"+txt_j_dt.Text.Trim().ToString()+"','"+txt_l_dt.Text.Trim().ToString()+"',";
        qry2 += "'"+txt_experience.Text.Trim().ToString()+"','"+isActive.ToString()+"')";

        qry3 = "insert into dbo.tbl_stf_edu_details_Master values";
        qry3 += "('"+txt_qualification.Text.Trim().ToString()+"','"+txt_ins_nm.Text.Trim().ToString()+"',";
        qry3 += "'"+txt_uni.Text.Trim().ToString()+"','"+txt_pass_yr.Text.Trim().ToString()+"','"+txt_tot_marks.Text.Trim().ToString()+"',";
        qry3 += "'"+txt_obt_marks.Text.Trim().ToString()+"','"+stf_class+"','"+isActive.ToString()+"')";

        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry1,cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Dispose();
        cn.Close();


        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry2,cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Dispose();
        cn.Close();


        cn = new SqlConnection(cnstr);
        cmd = new SqlCommand(qry3,cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Dispose();
        cn.Close();

        txt_stf_fnm.Text = "";
        txt_stf_mnm.Text = "";
        txt_stf_lnm.Text = "";
        txt_per_addr.Text = "";
        txt_curr_addr.Text = "";
        rdb_male.Checked=true;
        txt_stf_age.Text = "";
        txt_city.Text = "";
        txt_state.Text = "";
        txt_lnd_no.Text = "";
        txt_mob_numb.Text = "";
        txt_email.Text = "";
        txt_weburl.Text = "";

        txt_org.Text = "";
        txt_stf_desig.Text = "";
        txt_j_dt.Text = "";
        txt_l_dt.Text = "";
        txt_experience.Text = "";
        txt_qualification.Text = "";
        txt_ins_nm.Text = "";
        txt_uni.Text = "";
        txt_pass_yr.Text = "";
        txt_tot_marks.Text = "";
        txt_obt_marks.Text = "";
        rdb_f_class.Checked = true;
        
    }

}