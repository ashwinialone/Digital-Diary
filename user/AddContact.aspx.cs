using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_AddContact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string upath = Server.MapPath("photos");
            

            String ppath = upath + "\\" + FileUpload1.FileName.ToString();
            
            FileUpload1.SaveAs(ppath);
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into contact (name,mail,address,mobile,altno,photo,username) values (@name,@mail,@address,@mobile,@altno,@photo,@username)";
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@mail", txtmail.Text);
        cmd.Parameters.AddWithValue("@address", txtadd.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@altno", txtalternet.Text);
        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName.ToString());
        cmd.Parameters.AddWithValue("@username", Session["userid"].ToString());
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            lblmsg.Text = "Record submited successfully!";
        }
        else
        {
            lblmsg.Text = "Record not submited.Try again!!";
        }

        con.Close();
        txtadd.Text = "";
        txtalternet.Text = "";
        txtmail.Text = "";
        txtmobile.Text = "";
        txtname.Text = "";
    }
}