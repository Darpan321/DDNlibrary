using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace library
{
    public partial class allbooksadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name1 = Session["nn1"];
            Label2.Text = "Welcome:" + name1;
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepageadmin.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex.Equals(1))
            {
                Response.Redirect("addlibrarian.aspx");
            }
            else if (DropDownList1.SelectedIndex.Equals(2))
            {
                Response.Redirect("removelibrarian.aspx");
            }
            else if (DropDownList1.SelectedIndex.Equals(3))
            {
                Response.Redirect("updatelibrarian.aspx");
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedIndex.Equals(1))
            {
                Response.Redirect("issuedbooklistadmin.aspx");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedIndex.Equals(1))
            {
                Response.Redirect("allbooksadmin.aspx");
            }
            else if (DropDownList3.SelectedIndex.Equals(2))
            {
                Response.Redirect("availablebooksadmin.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            GridView2.Visible = false;
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "select bookid,bookname,authorname,isbnnumber,booktype,price from BOOK where bookid=@bookid ";
                using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                {

                    cmd.Parameters.AddWithValue("@bookid", bookid.Text.Trim());
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }

                }



            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}