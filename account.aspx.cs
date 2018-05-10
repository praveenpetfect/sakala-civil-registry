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
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        if (txtConfirmPass.Text == "" || txtEmail.Text == "" || txtFname.Text =="" || txtLname.Text == "" || txtLocation.Text == "" || txtLoginName.Text == "" || txtPass.Text  == "")
        {
            lblMsg.Text = "Missing Fields! Please fill up all";
            lblMsg.Visible = true;
            lblAvail.Visible = false;
        }
        else
        {
            cmd.CommandText = "select max(SlNo) from registration";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                x = dr.GetInt32(0);
                x = x + 1;
            }
            dr.Close();
            cmd.CommandText = "INSERT INTO REGISTRATION VALUES (" + x + ",'" + txtFname.Text + 
                "','" + txtLname.Text + "','" + txtLoginName.Text + 
                "','" + txtPass.Text + "','" + txtEmail.Text + 
                "','" + txtLocation.Text + "')";

            cmd.ExecuteNonQuery();
            cmd.CommandText = "insert into login values('" + txtLoginName.Text + "','" + txtPass.Text + "')";
            cmd.ExecuteNonQuery();
            lblMsg.Text = "You have successfully Registered";
            lblMsg.Visible = true;
            lblAvail.Visible = false;
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtConfirmPass.Text = "";
        txtEmail.Text = "";
        txtFname.Text = "";
        txtLname.Text = "";
        txtLocation.Text = "";
        txtLoginName.Text = "";
        txtPass.Text = "";
        lblMsg.Visible = false;
        btnReg.Enabled = false;
    }
   
    protected void btnChkAvailable_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "SELECT * FROM REGISTRATION WHERE USERNAME='" + txtLoginName.Text + "'";
        dr=cmd.ExecuteReader();
        if (dr.Read())
        {
            lblAvail.Text = "Please Select another name!";
            lblAvail.Visible = true;
        }
        else
        {
            lblAvail.Text = "Available, You can continue with this name";
            lblAvail.Visible = true;
            btnReg.Enabled = true;
        }
    }
}
