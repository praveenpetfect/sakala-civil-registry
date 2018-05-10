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
        if (!IsPostBack)
        {
            ShowData();
        }
    }
    //ShowData method for Displaying Data in Gridview  
    protected void ShowData()
    {
        dt = new DataTable();
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        adapt = new SqlDataAdapter("Select name,fname,gender,dob,address,district,state,doc from voter ", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }

    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        //NewEditIndex property used to determine the index of the row being edited.  
        GridView1.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        //Finding the controls from Gridview for the row which is going to update  
       
        TextBox name = GridView1.Rows[e.RowIndex].FindControl("name") as TextBox;
        TextBox fname = GridView1.Rows[e.RowIndex].FindControl("fname") as TextBox;
        TextBox dob = GridView1.Rows[e.RowIndex].FindControl("dob") as TextBox;
        TextBox address = GridView1.Rows[e.RowIndex].FindControl("address") as TextBox;
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        //updating the record  
        SqlCommand cmd = new SqlCommand("UPDATE voter(name, fname, dob, address) VALUES (@name, @fname, @dob, @address");
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        //Call ShowData method for displaying updated data  
        ShowData();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        ShowData();
    }
}
