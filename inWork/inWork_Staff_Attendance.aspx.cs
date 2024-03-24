using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class inWork_Staff_Attendance : System.Web.UI.Page
{
    string qry1 = "";
    string qry2 = "";
    string qry3 = "";
    string qry4 = "";
    string qry5 = "";

    string cnstr = ConfigurationManager.ConnectionStrings["db_inWorkConnectionString"].ConnectionString;
    
    int i = 0;
    Boolean isActive = true;
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;

    string sel_stf_nm;
    string sel_leave_type;

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_todays_dt.Text = DateTime.Now.ToString("d");
              Calendar1.Visible = false;
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
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
        txt_att_dt.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;  
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
{
    if (e.Day.Date.CompareTo(DateTime.Today) < 0)
    {
        e.Day.IsSelectable = false;
        e.Cell.BackColor = System.Drawing.Color.Gray;
    }


}
    protected void cmb_stf_nm_SelectedIndexChanged(object sender, EventArgs e)
    {
        txt_in_time.Text = "";
        txt_out_time.Text = "";
        sel_stf_nm = "";
        
        if(cmb_stf_nm.SelectedIndex !=0)
        {
           
            sel_stf_nm = cmb_stf_nm.Text.ToString();
           // Response.Write(sel_stf_nm);
            qry1 = "select stf_in_time,stf_out_time from dbo.tbl_staff_join_Master where stf_nm='"+sel_stf_nm+"'";

            cn = new SqlConnection(cnstr);
            cmd = new SqlCommand(qry1,cn);
            cn.Open();
            dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                txt_in_time.Text = dr["stf_in_time"].ToString();
                txt_out_time.Text=dr["stf_out_time"].ToString();
            }
            cmd.Dispose();
            cn.Dispose();
            cn.Close();
        }
    }
    protected void cmb_leave_types_SelectedIndexChanged(object sender, EventArgs e)
    {
       sel_leave_type = "";    
       if(cmb_leave_types.SelectedIndex !=0)
       {
           sel_leave_type = cmb_leave_types.Text.ToString();
       }
    

    }
    protected void btn_add_attendance_Click(object sender, EventArgs e)
    {
        if (cmb_stf_nm.SelectedIndex != 0 && cmb_leave_types.SelectedIndex != 0)
        {
            qry2 = "insert into dbo.tbl_staff_attendance_details values";
            qry2 += "('"+cmb_stf_nm.Text+"','"+txt_att_dt.Text.ToString()+"',";
            qry2+="'"+txt_in.Text.ToString()+"','"+txt_out.Text.ToString()+"',";
            qry2 += "'"+cmb_leave_types.Text+"','"+isActive+"')";

            cn = new SqlConnection(cnstr);
            cmd = new SqlCommand(qry2,cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Dispose();
            cn.Close();

            GridView1.DataBind();
  
            txt_in.Text = "";
            txt_out.Text = "";
        }
     
        else
        {
           
        }
        cmb_stf_nm.SelectedIndex = 0;
        cmb_leave_types.SelectedIndex = 0;
     
    }
}