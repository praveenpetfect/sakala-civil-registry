using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class printmarriage : System.Web.UI.Page
{
    string str;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
        str = "select * from marriage3 ";
        com = new SqlCommand(str, con);
        SqlDataReader dr = com.ExecuteReader();
        DataTable dt = new DataTable();

        
        while (dr.Read())
        {
            Label1.Text = dr["bridegroomname"].ToString();


            Label2.Text = dr["bridegroomfathername"].ToString();


            Label3.Text = dr["bridegroompresentaddr"].ToString();


            Label4.Text = dr["placeofmarriage"].ToString();


            Label5.Text = dr["dateofmarriage"].ToString();

            Label6.Text = System.DateTime.Today.ToShortDateString().ToString();

            Label7.Text = dr["bridename"].ToString();


            Label8.Text = dr["bridefathername"].ToString();


            Label9.Text = dr["bridepresentaddr"].ToString();

           
}



        dr.Close();
        con.Close();



    }
}
