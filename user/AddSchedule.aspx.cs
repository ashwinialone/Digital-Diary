using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_AddSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into Schedule_Meeting (meeting,address,time,date,username,status) values(@meeting,@address,@time,@date,@username,@status)";
        cmd.Parameters.AddWithValue("@meeting", ddlMeeting.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@address", txtadd.Text);
        cmd.Parameters.AddWithValue("@time", txttime.Text);
        cmd.Parameters.AddWithValue("@date", txtdate.Text);
        cmd.Parameters.AddWithValue("@username", Session["userid"].ToString());
        cmd.Parameters.AddWithValue("@status", "No");
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            lblmsg.Text="Schedule add Succefully!!";
        }
        else
        {
            lblmsg.Text = "Schedule Not added.Try Again!!";

        }

        txtadd.Text = "";
        txtdate.Text = "";
        txttime.Text = "";




    }
}