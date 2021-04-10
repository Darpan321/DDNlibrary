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
    public partial class issuebook : System.Web.UI.Page
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
                string insertQuery = "insert into issuebook(issueid,bookid,customername,contactnumber,emailid,address,date)values (@issueid,@bookid,@customername,@contactno,@emailid,@address,@date)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@issueid", issueid.Text);
                cmd.Parameters.AddWithValue("@bookid", bookid.Text);
                cmd.Parameters.AddWithValue("@customername", customername.Text);
                cmd.Parameters.AddWithValue("@contactno", contactno.Text);
                cmd.Parameters.AddWithValue("@emailid", emailid.Text);
                cmd.Parameters.AddWithValue("@address", address.Text);
                cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(date.Text));            
                cmd.ExecuteNonQuery();
                string update = "update BOOK Set available='no' where bookid=@bokid";
                SqlCommand cmd1 = new SqlCommand(update, conn);
                cmd1.Parameters.AddWithValue("@bokid", bookid.Text);
                cmd1.ExecuteNonQuery();

                conn.Close();
                Response.Write("<script>alert('added successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void check_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                String a = "yes";
                string insertQuery = "select bookname,authorname,isbnnumber,booktype from BOOK where bookid=@bookid and available=@available";//"insert into login(name,email,password,type)values (@name,@email,@password,@type)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@bookid", bookid.Text);
                cmd.Parameters.AddWithValue("@available",a);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        String bookname1 = String.Format("{0}", reader["bookname"]);
                        String authorname1 = String.Format("{0}", reader["authorname"]);
                        String isbnnumber1 = String.Format("{0}", reader["isbnnumber"]);
                        String booktype1 = String.Format("{0}", reader["booktype"]);

                        bookname.Text = bookname1;
                        authorname.Text = authorname1;
                        isbnnumber.Text = isbnnumber1;
                        booktype.Text = booktype1;

                    }
                }


                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        
    }
}