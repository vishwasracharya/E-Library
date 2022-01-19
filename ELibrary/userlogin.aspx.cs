using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // User Login 
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand command = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='"+TextBox1.Text.Trim()+"' AND password='"+TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('"+dr.GetValue(8).ToString()+"');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Login INFO');</script>");
                }
            }
            catch (Exception ex)
            {

            }

            // Response.Write("<script>alert('Button Clicked');</script>");
        }
    }
}