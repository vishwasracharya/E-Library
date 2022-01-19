using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    // Navbar Btn
                    LinkButton1.Visible = true; //User Login Btn
                    LinkButton2.Visible = true; //User SignUp Btn
                    LinkButton3.Visible = false; //Logout Btn
                    LinkButton5.Visible = false; //Hello User Btn
                    
                    // Footer Btn
                    LinkButton6.Visible = true; //Admin Login Btn
                    LinkButton7.Visible = false; //Author Manage Btn
                    LinkButton8.Visible = false; //Publisher Manage Btn
                    LinkButton9.Visible = false; //Book Inven Btn
                    LinkButton10.Visible = false; //Book Issue Btn
                    LinkButton11.Visible = false; //Member Manage Btn
                }
                else if (Session["role"].Equals("user"))
                {
                    // Navbar Btn
                    LinkButton1.Visible = false; //User Login Btn
                    LinkButton2.Visible = false; //User SignUp Btn
                    LinkButton3.Visible = true; //Logout Btn
                    LinkButton5.Visible = true; //Hello User Btn
                    LinkButton5.Text = "Hello " + Session["username"].ToString();

                    // Footer Btn
                    LinkButton6.Visible = true; //Admin Login Btn
                    LinkButton7.Visible = false; //Author Manage Btn
                    LinkButton8.Visible = false; //Publisher Manage Btn
                    LinkButton9.Visible = false; //Book Inven Btn
                    LinkButton10.Visible = false; //Book Issue Btn
                    LinkButton11.Visible = false; //Member Manage Btn
                }
                else if (Session["role"].Equals("admin"))
                {
                    // Navbar Btn
                    LinkButton1.Visible = false; //User Login Btn
                    LinkButton2.Visible = false; //User SignUp Btn
                    LinkButton3.Visible = true; //Logout Btn
                    LinkButton5.Visible = true; //Hello User Btn
                    LinkButton5.Text = "Hello Admin";

                    // Footer Btn
                    LinkButton6.Visible = false; //Admin Login Btn
                    LinkButton7.Visible = true; //Author Manage Btn
                    LinkButton8.Visible = true; //Publisher Manage Btn
                    LinkButton9.Visible = true; //Book Inven Btn
                    LinkButton10.Visible = true; //Book Issue Btn
                    LinkButton11.Visible = true; //Member Manage Btn
                }
            }
            catch(Exception ex)
            {
                // Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminusermanagement.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["full_name"] = "";
            Session["role"] = "";
            Session["status"] = "";

            // For Default View
            // Navbar Btn
            LinkButton1.Visible = true; //User Login Btn
            LinkButton2.Visible = true; //User SignUp Btn
            LinkButton3.Visible = false; //Logout Btn
            LinkButton5.Visible = false; //Hello User Btn

            // Footer Btn
            LinkButton6.Visible = true; //Admin Login Btn
            LinkButton7.Visible = false; //Author Manage Btn
            LinkButton8.Visible = false; //Publisher Manage Btn
            LinkButton9.Visible = false; //Book Inven Btn
            LinkButton10.Visible = false; //Book Issue Btn
            LinkButton11.Visible = false; //Member Manage Btn
        }
    }
}