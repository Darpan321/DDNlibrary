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
    public partial class updatelibrarian : System.Web.UI.Page
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

        protected void check_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "select librarianname,contactno,emailid,address from librarian where librarianid=@librarianid";//"insert into login(name,email,password,type)values (@name,@email,@password,@type)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@librarianid", librarianid.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        
                        String librarianname1 = String.Format("{0}", reader["librarianname"]);
                        String contactno1 = String.Format("{0}", reader["contactno"]);
                        String emailid1 = String.Format("{0}", reader["emailid"]);
                        String address1 = String.Format("{0}", reader["address"]);

                        librarianname.Text = librarianname1;
                        contactno.Text = contactno1;
                        emailid.Text = emailid1;
                        address.Text = address1;

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
                string insertQuery = "update librarian Set librarianname=@librarianname,contactno=@contactno,emailid=@emailid,address=@address where librarianid=@librarianid";//"insert into login(name,email,password,type)values (@name,@email,@password,@type)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@librarianid", librarianid.Text);
                cmd.Parameters.AddWithValue("@librarianname", librarianname.Text);
                cmd.Parameters.AddWithValue("@contactno", contactno.Text);
                cmd.Parameters.AddWithValue("@emailid", emailid.Text);
                cmd.Parameters.AddWithValue("@address", address.Text);
                cmd.ExecuteNonQuery();

                conn.Close();
                Response.Write("<script>alert('updated successfully');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}