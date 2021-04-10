using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace library
{
    public partial class removebook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name1 = Session["nn2"];
            Label2.Text = "Welcome:" + name1;

        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepagelibrarian.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex.Equals(1))
            {
                Response.Redirect("addbook.aspx");
            }
            else if (DropDownList1.SelectedIndex.Equals(2))
            {
                Response.Redirect("removebook.aspx");
            }
            else if (DropDownList1.SelectedIndex.Equals(3))
            {
                Response.Redirect("updatebook.aspx");
            }
            else if (DropDownList1.SelectedIndex.Equals(4))
            {
                Response.Redirect("availablebook.aspx");
            }
            else if (DropDownList1.SelectedIndex.Equals(5))
            {
                Response.Redirect("allbook.aspx");
            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedIndex.Equals(1))
            {
                Response.Redirect("addissuebookentry.aspx");
            }
            else if (DropDownList2.SelectedIndex.Equals(2))
            {
                Response.Redirect("issuedbooklist.aspx");
            }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedIndex.Equals(1))
            {
                Response.Redirect("returnbookentry.aspx");
            }
            else if (DropDownList3.SelectedIndex.Equals(2))
            {
                Response.Redirect("returnbooklist.aspx");
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                string removeQuery = "delete from BOOK where bookid=@bookid and isbnnumber=@isbnnumber";
                SqlCommand cmd = new SqlCommand(removeQuery, conn);
                cmd.Parameters.AddWithValue("@bookid", bookid.Text);
                cmd.Parameters.AddWithValue("@isbnnumber", isbnnumber.Text);
                cmd.ExecuteNonQuery();



                conn.Close();
                Response.Write("<script>alert('Deleted successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}