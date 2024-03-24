using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inWork_Staff_Att_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_session_nm.Text = Session["stf_name"].ToString();
    }
}