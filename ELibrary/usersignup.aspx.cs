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
    public partial class usersignup : System.Web.UI.Page
    {
        private const string S = "<script>alert('Member Aready Exists, TRY ANOTHER USERNAME');</script>";
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Sign Up Button Click Event
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("<script>alert('Testing I am Vishwas Acharya')</script>");


            if (checkMemberExists())
            {
                Response.Write(S);
            }
            else
            {
                signUpNewUser();
            }

        }

        // --- User Define METHODES ---

        // Method to Check whether Member_id already exists in DB or NOT.
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='"+TextBox1.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            return false;
        }

        // Method to signup
        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl (full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) VALUES (@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go TO USER LOGIN');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}