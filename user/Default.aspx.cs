using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //SqlCommand cmd = new SqlCommand();
        //con.Open();
        //cmd.Connection = con;
        //cmd.CommandText = "Select * from Schedule_Meeting where username=@username";
        //cmd.Parameters.AddWithValue("@username", Session["userid"].ToString());
        //SqlDataReader dr = cmd.ExecuteReader();

        //GridView2.DataSource = dr;
        //GridView2.DataBind();

        //con.Close();

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select id,date from Schedule_Meeting where username=@username";
        cmd.Parameters.AddWithValue("@username", Session["userid"].ToString());
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            string validity = dr.GetString(1);
            DateTime dt = Convert.ToDateTime(validity);
            DateTime today = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            int result = dt.CompareTo(today);

          //  Response.Write(today);
            if (result < 0)
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
                SqlCommand cmd1 = new SqlCommand();
                con1.Open();
                cmd1.Connection = con1;
                cmd1.CommandText = "Select * from Schedule_Meeting where username=@username and id=@id";
                cmd1.Parameters.AddWithValue("@username", Session["userid"].ToString());
                cmd1.Parameters.AddWithValue("@id", dr.GetInt32(0));
                SqlDataReader gdr = cmd1.ExecuteReader();

                GridView2.DataSource = gdr;
                GridView2.DataBind();
                con1.Close();


            }
            else
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
                SqlCommand cmd1 = new SqlCommand();
                con1.Open();
                cmd1.Connection = con1;
                cmd1.CommandText = "Select * from Schedule_Meeting where username=@username and id=@id";
                cmd1.Parameters.AddWithValue("@username", Session["userid"].ToString());
                cmd1.Parameters.AddWithValue("@id", dr.GetInt32(0));
                SqlDataReader gdr = cmd1.ExecuteReader();

                GridView1.DataSource = gdr;
                GridView1.DataBind();
                con1.Close();
            }

        }

        con.Close();



    }

}