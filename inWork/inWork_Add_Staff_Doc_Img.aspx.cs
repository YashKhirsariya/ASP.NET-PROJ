using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class inWork_Add_Staff_Doc_Img : System.Web.UI.Page
{
    string qry1 = "";
    string qry2 = "";

    Boolean isActive = true;

    string img_path;
    string doc_path;
    string path1,path2;
    int i = 0;

    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;

    string cnstr = ConfigurationManager.ConnectionStrings["db_inWorkConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
     //   Label1.Visible = false;
  //      Label2.Visible = false; 
        Label1.Text = "Select Only .jpg Files";
        Label2.Text = "Select Only .pdf Files";
    }

   

    protected void cmb_stf_nm_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_sel_staff_nm.Text = cmb_stf_nm.SelectedValue.ToString();
 
    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        img_path = fupld_staff_img.FileName.ToString();
        doc_path = fupld_staff_doc.FileName.ToString();

        path1 = Server.MapPath("Images/staff_images/");
        path2 = Server.MapPath("Images/staff_documents/");

        string ext = Path.GetExtension(fupld_staff_img.FileName);
        if (ext == ".jpg")
        {
            fupld_staff_img.SaveAs(path1 +  fupld_staff_img.FileName);
            string name = "Images/staff_images/"+fupld_staff_img.FileName;

            qry1 = "insert into dbo.tbl_staff_img_Master values";
            qry1 += "('"+lbl_sel_staff_nm.Text+"','"+name+"','"+ext+"','"+isActive+"')";

            cn = new SqlConnection(cnstr);
            cmd = new SqlCommand(qry1,cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Dispose();
            cn.Close();

        }
        else
        {
            Label1.Visible = true;
            
        }

        string ext1 = Path.GetExtension(fupld_staff_doc.FileName);
        if(ext1==".pdf")
        {
            fupld_staff_doc.SaveAs(path2 + fupld_staff_doc.FileName);
            string name1 = "Images/staff_documents/"+fupld_staff_doc.FileName;

            qry2 = "insert into dbo.tbl_staff_doc_Master values";
            qry2 += "('"+lbl_sel_staff_nm.Text+"','"+txt_doc_name.Text+"','"+name1+"','"+ext1+"','"+isActive+"')";

            cn = new SqlConnection(cnstr);
            cmd = new SqlCommand(qry2, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Dispose();
            cn.Close();
        }
        else
        {

            Label2.Visible = true;
           
        }
        txt_doc_name.Text="";
        lbl_upld_status.Visible = true; 
    }
  
}