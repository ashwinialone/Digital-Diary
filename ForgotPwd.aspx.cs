using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;

public partial class ForgotPwd : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void sendHtml(string pwd, string email)
    {
        StreamReader reader = new StreamReader(Server.MapPath("~/MailBody.htm"));
        string readFile = reader.ReadToEnd();
        string myString = "";
        myString = readFile;
        myString = myString.Replace("$$Username$$", txtUsername.Text);
        myString = myString.Replace("$$otp$$", pwd);


        MailMessage Msg = new MailMessage();
        MailAddress fromMail = new MailAddress("litsbros@gmail.com");
        // Sender e-mail address.
        Msg.From = fromMail;
        // Recipient e-mail address.
        Msg.To.Add(new MailAddress(email));
        // Subject of e-mail
        Msg.Subject = "Get Password ";
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


    }


    protected void btnpwd_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select pwd,email from Registration where username=@username";

            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read() == null)
            {
                lblmsg.Text = "Enter Registared  username";

            }
            else
            {
                
                string pwd = dr.GetString(dr.GetOrdinal("pwd")).ToString();
                string email = dr.GetString(dr.GetOrdinal("email")).ToString();
                sendHtml(pwd, email);
                lblmsg.Text = "Your Password Send to Your registared Email-id";

            }
            

        }
        catch(Exception ex)
        {
            Response.Write(ex);
        }
    }
}
