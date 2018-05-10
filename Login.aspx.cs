using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void bt_submit_Click(object sender, EventArgs e)
    {
        if (txtpassword.Text == "" || txtuser.Text == "")
        {
            lbl_msg.Text = "Missing Fields!";
            lbl_msg.Visible = true;
        }
        else
        {
            cmd.CommandText = "select * from login where Username='" + txtuser.Text + "' and Password='" + txtpassword.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["user"] = txtuser.Text;
                Response.Redirect("userindex.aspx");
            }
            else
            {
                lbl_msg.Text = "Login Failed! Invalid User name or Password";
                lbl_msg.Visible = true;
            }
        }
    }
    protected void bt_reset_Click(object sender, EventArgs e)
    {
        txtpassword.Text = "";
        txtuser.Text = "";

    }
}
