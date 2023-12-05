using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;
using System.Timers;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        ClassCheck cs = new ClassCheck();
        cs.lis(Server.MapPath("MasterPage.master"), Server.MapPath("MasterPage.master.cs"), Server.MapPath("web.config"));
    }
    public void CheckStatus()


    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select * from Schedule_Meeting where status='No'";
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            
                SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
                SqlCommand cmdd = new SqlCommand();
                conn.Open();
                cmdd.Connection = conn;
                cmdd.CommandText = "Select email from Registration where username=@username";
                cmdd.Parameters.AddWithValue("@username", dr.GetString(5));
                SqlDataReader dr_e = cmdd.ExecuteReader();
                while (dr_e.Read())
                {
                    //code for new concept//

                    string mt = dr.GetString(dr.GetOrdinal("time"));
                    DateTime tt = Convert.ToDateTime(mt);
                    DateTime t = DateTime.Now;
                   // Response.Write(tt);
                   // Response.Write(t);

                    // TimeSpan diff = DateTime.Now.ToLocalTime().Subtract(tt);
                    TimeSpan diff = t.Subtract(tt);
                    double time = diff.TotalHours;
                    int k = Convert.ToInt32(time);
                    if (k == 1 || k == -1)
                    {
                        //Response.Write("          yes");

                        string email = dr_e.GetString(0);
                        StreamReader reader = new StreamReader(Server.MapPath("~/Notification1.htm"));
                        string readFile = reader.ReadToEnd();
                        string myString = "";
                        myString = readFile;
                        myString = myString.Replace("$$meeting$$", dr.GetString(1));
                        myString = myString.Replace("$$time$$", dr.GetString(3));
                        myString = myString.Replace("$$address$$", dr.GetString(2));


                        MailMessage Msg = new MailMessage();
                        MailAddress fromMail = new MailAddress("litsbros@gmail.com");
                        // Sender e-mail address.
                        Msg.From = fromMail;
                        // Recipient e-mail address.
                        Msg.To.Add(new MailAddress(email));
                        // Subject of e-mail
                        Msg.Subject = "Meeting Notification ";
                        Msg.Body = myString.ToString();
                        Msg.IsBodyHtml = true;

                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        smtp.EnableSsl = true;
                        NetworkCredential NetworkCred = new NetworkCredential("litsbros@gmail.com", "9503351933");
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = NetworkCred;
                        smtp.Port = 587;
                        smtp.Send(Msg);

                        reader.Dispose();
                        //con.Close();

                        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
                        SqlCommand cmd1 = new SqlCommand();
                        con1.Open();
                        cmd1.Connection = con1;
                        cmd1.CommandText = "update Schedule_Meeting set status='Yes' where status='No'";
                        cmd1.ExecuteNonQuery();
                        // con1.Close();
                    }
                   // Response.Write(time);

                }
            }
        // Response.Write(dr.GetString(6));

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd2 = new SqlCommand();
        con2.Open();
        cmd2.Connection = con2;
        cmd2.CommandText = "Select status,date from Schedule_Meeting";
        SqlDataReader tdr = cmd2.ExecuteReader();

        while (tdr.Read())

        {
            string validity = tdr.GetString(1);
            DateTime dt = Convert.ToDateTime(validity);
            DateTime today = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            int result = dt.CompareTo(today);
           // Response.Write(tdr.GetString(1));
           
           // Response.Write(dt.CompareTo(today));

            if (tdr.GetString(0) == "No" && result==0)
            {
                //Response.Write("in if");
                Timer1.Enabled = true;
                CheckStatus();

                break;
            }

            else
            {
                //Response.Write("in else");
                Timer1.Enabled = false;
            }
        }
       // con2.Close();
       
    }
}