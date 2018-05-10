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

public partial class Default2 : System.Web.UI.Page
{
    //Connection String from web.config File  
    
    SqlConnection con;
    SqlDataAdapter adapt;
    DataTable dt;
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
        String dateofdeath = e.NewValues[0].ToString();
        String nameofdeceased= e.NewValues[1].ToString();
        String fathersorhusname = e.NewValues[2].ToString();
        String placeofdeath = e.NewValues[3].ToString();
        String sate = e.NewValues[4].ToString();

        String sql = "Update death set dateofdeath='" + dateofdeath + "',nameofdeceased='" + nameofdeceased + "',fathersorhusname='" + fathersorhusname + "',placeofdeath='" + placeofdeath + "'  where SlNo=" + old + "";
        SqlDataSource1.UpdateCommand = sql;
        GridView1.DataBind();
        
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
