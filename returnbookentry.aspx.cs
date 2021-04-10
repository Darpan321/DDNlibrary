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
    public partial class returnbookentry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name1 = Session["nn2"];
            Label2.Text = "Welcome:" + name1;
            check.Visible=false;
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

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepagelibrarian.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void check_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                String a = "no";
                string insertQuery = "select bookname,authorname,isbnnumber,booktype from BOOK where bookid=@bookid and available=@available";//"insert into login(name,email,password,type)values (@name,@email,@password,@type)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@bookid", bookid.Text);
                cmd.Parameters.AddWithValue("@available", a);

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

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into returnbook(returnid,returnon,issueon,issueid,bookid)values (@returnid,@returnon,@issueon,@issuedid,@bookid)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@returnid", returnid.Text);
                cmd.Parameters.AddWithValue("@returnon", Convert.ToDateTime(returndate.Text));
                cmd.Parameters.AddWithValue("@issueon", Convert.ToDateTime(issuedon.Text));
                cmd.Parameters.AddWithValue("@issuedid", issueid.Text);
                cmd.Parameters.AddWithValue("@bookid", bookid.Text);
                cmd.ExecuteNonQuery();
                string update = "update BOOK Set available='yes' where bookid=@bokid";
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

        protected void checkissue_Click(object sender, EventArgs e)
        {
            check.Visible =true;
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "select bookid,customername,date from issuebook where issueid=@issueid";//"insert into login(name,email,password,type)values (@name,@email,@password,@type)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@issueid", issueid.Text);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        String bookid1 = String.Format("{0}", reader["bookid"]);
                        String customername1 = String.Format("{0}", reader["customername"]);
                        DateTime date1 =(DateTime) reader["date"];

                        bookid.Text = bookid1;
                        customername.Text = customername1;
                        issuedon.Text = date1.ToString("dd-MM-yyyy");

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