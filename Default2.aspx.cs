using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {    //declared the function
        Retrieve_Image_signFromDB();
        // holds the session variables
        Label2.Text = Session[""].ToString();
        Label3.Text = Session["name"].ToString();
        Label4.Text = Session["category"].ToString();
        Label5.Text = Session["dob"].ToString();
        Label6.Text = Session["mobile"].ToString();
        Label1.Text = Session["qualification"].ToString();
        
        Label9.Text = System.DateTime.Today.ToShortDateString().ToString();
    }
    private void Retrieve_Image_signFromDB()
    {
           
    }
}