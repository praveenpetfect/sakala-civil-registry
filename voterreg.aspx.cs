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


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        int x;
        con.Open();
        cmd.Connection = con;
        string fileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/voter" + fileName));

        string fileName1 = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName);
        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Uploads/voter" + fileName1));

        if (txtname.Text == "" || txtfname.Text == "" || dob.Text == "" ||
            ddl.Text == "" || add.Text == "" || dis.Text == "" ||
            state.Text == "")
        {
            Lbl.Text = "Missing Fieldds! Please fill all mandatory fields";
            Lbl.Visible = true;
        }
        else
        {
            cmd.CommandText = "INSERT INTO voter VALUES('" + txtname.Text + "','" + txtfname.Text +
                "','" + ddl.SelectedValue + "','" + dob.Text + "','" + add.Text +
                "','" + dis.Text + "','" + state.Text + "','" + ddl1.SelectedValue + "')";
            x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Lbl.Text = "registration for voter card completed successfully";
                Lbl.Visible = true;
            }
            else
            {
                Lbl.Text = "Record failed to Add";
                Lbl.Visible = true;

            }
        }
    }
}
