using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace library
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            signin.Visible = true;
            signup.Visible = false;
            M2.Visible = true;
            M1.Visible = false;
            Image1.Visible = false;
            Image2.Visible = true;
        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            signup.Visible = false;
            M1.Visible = false;
            Image1.Visible = false;
            signin.Visible = true;
            M2.Visible = true;
            Image2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            signin.Visible = false;
            M2.Visible = false;
            Image2.Visible = false;
            signup.Visible = true;
            M1.Visible = true;
            Image1.Visible = true;
        }

        protected void submit0_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into login(name,email,password,type)values (@name,@email,@password,@type)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@name", entername.Text);
                cmd.Parameters.AddWithValue("@email", enteremailid.Text);
                cmd.Parameters.AddWithValue("@password", enterpassword.Text);
                cmd.Parameters.AddWithValue("@type", RadioButtonList1.SelectedItem.Text);
                cmd.ExecuteNonQuery();



                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegiConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "select type,name from login where email=@emailid and password=@password";//"insert into login(name,email,password,type)values (@name,@email,@password,@type)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@emailid", emailid.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);
                using (SqlDataReader reader=cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        String v = String.Format("{0}", reader["type"]);
                        String n = String.Format("{0}", reader["name"]);
                        if (v == "Admin")
                        {
                            Session["nn1"] = n;
                            Response.Redirect("homepageadmin.aspx");
                           
                            
                        }
                        else if(v == "Librarian")
                        {
                            Session["nn2"] = n;
                            Response.Redirect("homepagelibrarian.aspx");

                        }
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