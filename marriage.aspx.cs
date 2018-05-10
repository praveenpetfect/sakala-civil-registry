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
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Data;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
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
    protected void btnapp_Click(object sender, EventArgs e)
    {
        
        String bdob=Request.Form.Get("txtBDOB");
        String dob1=Request.Form.Get("txtBDOB1");
        String dob2=Request.Form.Get("txtBDOB2");
        string test=Request.Form.Get("txtMDate");

        


        string fileName = System.IO.Path.GetFileName(FUphoto.PostedFile.FileName);
        FUphoto.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + fileName));
        
        if (txtfath.Text == "" || txtfathwife.Text == "" || txtnam.Text == "" ||
            txtnamewife.Text == "" || txtper.Text == "" || txtperwife.Text == "" ||
            txtpre.Text == "" || txtprewife.Text == "" || 
            txtsol.Text == "" || txtvote.Text == "" || txtvotewife.Text == "")
        {
            lblmsg.Text = "Missing Fieldds! Please fill all mandatory fields";
            lblmsg.Visible = true;
        }
        else
        {
            cmd.CommandText = "select max(SlNo) from marriage3";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                x = dr.GetInt32(0);
                x = x + 1;
            }
            dr.Close();
            cmd.CommandText = "INSERT INTO marriage3 VALUES(" + x + ",'" + bdob + "','" + txtnam.Text + 
                "','" + txtnamewife.Text + "','" + txtfath.Text + "','" + txtfathwife.Text + 
                "','" + dob1 + "','" + dob2 + "','" + txtpre.Text + "','" + txtprewife.Text + 
                "','" + txtper.Text + "','" + txtperwife.Text + "','" + txtvote.Text + 
                "','" + txtvotewife.Text + "','" + dpdnmar.SelectedValue + "','" + dpdnmarwife.SelectedValue + "','" + test + "','" + txtsol.Text + "','"+FUphoto.PostedFile.FileName+"')";
            x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                lblmsg.Text = "marriage registration completed successfully";
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Text = "Record failed to Add";
                lblmsg.Visible = true;
            }
        }
       
    }
}
