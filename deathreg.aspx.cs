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

public partial class Default4 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string dob = Request.Form.Get("dob");
        String sex;
        String status;
        
       
        if(rtbnmale.Checked==true)
        {
            sex="Male";
        }
        else
        {
            sex="Female";
        }
        if(txtage.Text=="" || txtdeathplace.Text=="" || txtdeceased.Text=="" || 
            txtdistrict.Text=="" || txtrelativename.Text=="" ||  txtstate.Text=="" ||
            txttown.Text=="")
        {
            lblmsg.Text = "Missing Fields! Please fill all the mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText = "select max(SlNo) from death";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                x = dr.GetInt32(0);
                x = x + 1;
            }
            dr.Close();
        cmd.CommandText = "INSERT INTO death VALUES(" + x + ",'" + dob + "','" + txtdeceased.Text +
            "','" + txtrelativename.Text + "','" + sex + "','" + txtage.Text + "','" + txtdeathplace.Text +
            "','" + txttown.Text + "','" + txtdistrict.Text + "','" + txtstate.Text + "')";
        x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            lblmsg.Text = "Death Registration Completed Successfully";
            lblmsg.Visible = true;
        }
        else
        {
            lblmsg.Text = "Death Registration Failed! Pleae try again";
            lblmsg.Visible = true;
        }
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
        txtage.Text = "";
        
        txtdeathplace.Text = "";
        txtdeceased.Text = "";
        
        txtdistrict.Text = "";
        
        txtrelativename.Text = "";
       
        txtstate.Text = "";
        txttown.Text = "";
        rtbnmale.Checked = true;
        rbtnfemale.Checked = false;
        
    }
}
