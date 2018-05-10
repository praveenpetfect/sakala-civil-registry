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
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        cmd= new SqlCommand();
        cmd.Connection = con;
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string dob = Request.Form.Get("dob");
        string tdate = Request.Form.Get("date");
       
        if (dob == "" || drop_sex.Text == "" || txtnameofchild.Text == "" ||
            txtnameoffather.Text == "" || txtnameofmother.Text == "" || txtplaceofbirth.Text == "" ||
           
            txtnameofvillage.Text == "" || txtnameofdistrict.Text == "" || txtnameofstate.Text == "" )
        {
            lbl_msg.Text = "Missing Fields";
            lbl_msg.Visible = true;
        }
        else
        {
            
            cmd.CommandText = "select max(SlNo) from birthreg";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                x = dr.GetInt32(0);
                x = x + 1;
            } 
            dr.Close();
            cmd.CommandText = "insert into birthreg values(" + x + ",'" + dob + "','" + drop_sex.SelectedValue + "','" + txtnameofchild.Text + "','" + txtnameoffather.Text + "','" + txtnameofmother.Text + "','" + txtplaceofbirth.Text + "','" + txtnameofvillage.Text + "','" + txtnameofdistrict.Text + "','" + txtnameofstate.Text + "')";
            x=cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lbl_msg.Text = "Registration Successful you can Collect your Certificate after 7 days..";
                lbl_msg.Visible = true;
            }

        }
        
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        
        txtnameofchild.Text = "";
        txtnameofdistrict.Text = "";
        txtnameoffather.Text = "";
        txtnameofmother.Text = "";
        txtnameofstate.Text = "";
        txtnameofvillage.Text = "";
        
        txtplaceofbirth.Text = "";
        

    }
}
