using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace SE_VOTING_SYSTEM
{
    public partial class candidate_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) // on submit button for candidate registration
        {
            int integer;
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text!="" ) //checking whether any of the textbox conatins empty value or not?
            {
                if (Int32.TryParse(TextBox6.Text, out integer) && (integer >= 18 && integer <= 100)) // to check that age entered is a number not a string and within range
                {
                    invalid.Text = "";
                    // Response.Write("Success");  // for debugging
                    bool flag = false; // to check that duplicate candidate with same id doesn't exists
                    using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))  //making connection to db
                    {
                        con1.Open();
                        string check_duplicate = "select CandidateID from candidate_info where CandidateID=@inputt";

                        using (SqlCommand cmd1 = new SqlCommand(check_duplicate, con1))
                        {
                            cmd1.Parameters.AddWithValue("@inputt", TextBox4.Text);

                            using (SqlDataReader read = cmd1.ExecuteReader())
                            {
                                if (read.Read()) // if a duplicate candidate with same id found
                                {

                                    flag = true;

                                }
                                if (flag == true) // if duplicate found then display
                                {
                                    invalid.Text = "A candidate with same Id already exists!";



                                    read.Close();
                                    read.Dispose();

                                }
                            }
                        }
                        con1.Close();
                        con1.Dispose();
                    }

                    if (flag == false)  // if the candidate is new and no other candidate exists with this candidate id
                    {
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        con.Open();

                        string insertquery = "insert into candidate_info (Name,Phone,Email,CandidateID,Partyname,Address,Age,password) values(@namee,@phon,@emaill,@cid,@pn,@addd,@agi,@pas)";
                        SqlCommand cmd = new SqlCommand(insertquery, con);
                        cmd.Parameters.AddWithValue("@namee", TextBox1.Text); // here i am inserting the data in the database
                        cmd.Parameters.AddWithValue("@phon", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@emaill", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@cid", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@pn", TextBox7.Text);
                        cmd.Parameters.AddWithValue("@pas", TextBox8.Text);

                        cmd.Parameters.AddWithValue("@addd", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@agi", TextBox6.Text);


                        cmd.ExecuteNonQuery();

                        con.Close();
                        Response.Redirect("admin_menu.aspx"); //after inserting data admin redirected to his menu



                    }



                }
                else // if any of the textbox is empty
                {
                    invalid.Text = "Please Enter valid age!";
                }
            }
            else
            {
                invalid.Text = "Please Enter all information";
            }
        }
    }
}