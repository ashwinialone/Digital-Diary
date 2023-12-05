using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{

    SqlConnection cn;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        generateID();
        string fname="DummyPhoto.jpg";
        

        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            int pos = str.LastIndexOf(".");
            string ext = str.Substring(pos + 1);
            fname = "p_" + hfid.Value.ToString() + "." + ext;

            string upath = Server.MapPath("user");

            String ppath = upath + "/photos" + "\\" + fname;

            FileUpload1.SaveAs(ppath);
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);

        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into Registration(id,name,gender,occupation,address,mobile,qua,email,username,pwd,photo,driving_licence,pancard,adhar_no,height,weight,blood_grup,passport)values(@id,@name,@gender,@occupation,@address,@mobile,@qua,@email,@username,@pwd,@photo,@dl,@pan,@adhar,@ht,@wt,@blood,@pass)";

        cmd.Parameters.AddWithValue("@id", hfid.Value);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@gender", rbgender.SelectedItem.Value.ToString());

        cmd.Parameters.AddWithValue("@occupation", ddlprofession.SelectedValue.ToString());
        

        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@address", txtadd.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);

        cmd.Parameters.AddWithValue("@qua", ddlocc.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@username", txtuser.Text);
        cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);

        cmd.Parameters.AddWithValue("@photo", fname);
        cmd.Parameters.AddWithValue("@dl", txtdriving.Text);
        cmd.Parameters.AddWithValue("@pan", txtpancard.Text);
        cmd.Parameters.AddWithValue("@adhar", txtadharcard.Text);
        cmd.Parameters.AddWithValue("@ht", txtheight.Text);
        cmd.Parameters.AddWithValue("@wt", txtweight.Text);
        cmd.Parameters.AddWithValue("@blood", ddlbloodgrup.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@pass", txtpassport.Text);

        


        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
          //  FileUpload1.SaveAs(ppath);
            //lblmsg.Text = "Registration Successful !";
            //string msg = "Thank You for registration.%0a Your Login Credential are : %0a Username : " + txtuser.Text + " %0a password : " + txtpwd.Text + "%0a Do not share with anyone.";
            //b.SendSms("TRAVEL", txtmob.Text, msg);
            Response.Redirect("Success.aspx");
        }
        else
        {
            Response.Write("Error!");
        }
        con.Close();
      
       
    }
    protected void generateID()
    {
        cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select id from Registration order by id desc";
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            hfid.Value = "1";
        }
        else
        {
            int n = Convert.ToInt32(obj);
            n = n + 1;
            hfid.Value = n.ToString();
        }
        cn.Close();

    }
    protected void txtdriving_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtdriving_TextChanged1(object sender, EventArgs e)
    {

    }
}