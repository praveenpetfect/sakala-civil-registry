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

public partial class printdeath : System.Web.UI.Page
{
    string str;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {  SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            con.Open();
            str = "select * from death";
            com = new SqlCommand(str, con);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr["nameofdeceased"].ToString();


                Label2.Text = dr["fathersorhusname"].ToString();


                Label3.Text = dr["nameoftownorvillage"].ToString();


                Label4.Text = dr["sex"].ToString();


                Label5.Text = dr["dateofdeath"].ToString();


                Label6.Text = dr["placeofdeath"].ToString();


                Label7.Text = System.DateTime.Today.ToShortDateString().ToString();
            }
        dr.Close();
            con.Close();

           

        }
    }
