using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_upload_photo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string upath = Server.MapPath("photos");

            String ppath = upath + "\\" + FileUpload1.FileName;

            FileUpload1.SaveAs(ppath);
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "update Registration set photo=@photo where username=@username";
        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName.ToString());
        cmd.Parameters.AddWithValue("@username", Session["userid"].ToString());
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            lblmsg.Text = "Photo uploaded succesfully";
        }
        else
        {
            lblmsg.Text = "Photo not Uploaded.Try  again!";
        }

    }
}