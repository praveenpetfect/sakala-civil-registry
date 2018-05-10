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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Application.Set("oldvalue", GridView1.Rows[e.NewEditIndex].Cells[0].Text);
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        String old = Application.Get("oldvalue").ToString();
        String dob = e.NewValues[0].ToString();
        String sex= e.NewValues[1].ToString();
        String Childname = e.NewValues[2].ToString();
        String fathersname = e.NewValues[3].ToString();
        String mothersname = e.NewValues[4].ToString();

        String sql = "Update birthreg set dob='" + dob + "',sex='" + sex +"',nameofchild='" + Childname + "',fatherssname='" + fathersname + "'  where SlNo=" + old + "";
        SqlDataSource1.UpdateCommand = sql;
        GridView1.DataBind();
        lblmsg.Text = "A Birth Registration Successfully Updated!!";
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       /* string x;
        x = GridView1.Rows[e.RowIndex].Cells[0].Text;
        SqlDataSource1.DeleteCommand = "delete from birthreg where SlNo='" + x + "'";
        GridView1.DataBind();
        lblmsg.Text = "BirthRegistration Successfully Deleted!!";*/
    }
}
