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
    public partial class voter_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) // this is the submit button for registering the voter
        {
            int integer;
            if(TextBox1.Text!="" && TextBox2.Text!="" && TextBox3.Text!="" && TextBox4.Text!="" && TextBox5.Text!="" && TextBox6.Text!="" && TextBox7.Text!="") //checking whether any of the textbox conatins empty value or not?
            {
                if (Int32.TryParse(TextBox6.Text, out integer) && (integer>=18 && integer<=100)) // to check that age entered is a number not a string and within range

                {
                    invalid.Text = "";
                   // Response.Write("Success");  // for debugging
                    bool flag = false; // to check that duplicate voter with same id doesn't exists
                    using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))  //making connection to db
                    {
                        con1.Open();
                        string check_duplicate = "select VoterID from voter_info where VoterID=@inputt";

                        using (SqlCommand cmd1 = new SqlCommand(check_duplicate, con1))
                        {
                            cmd1.Parameters.AddWithValue("@inputt", TextBox4.Text);

                            using (SqlDataReader read = cmd1.ExecuteReader())
                            {
                                if (read.Read()) // if a duplicate voter with same id found
                                {

                                    flag = true;

                                }
                                if (flag == true) // if duplicate found then display
                                {
                                    invalid.Text = "A voter with same Id already exists!";



                                    read.Close();
                                    read.Dispose();

                                }
                            }
                        }
                        con1.Close();
                        con1.Dispose();
                    }

                    if (flag == false)  // if the voter is new and no other voter exists with this voter id
                    {
                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        con.Open();

                        string insertquery = "insert into voter_info (Name,Phone,Email,VoterID,Address,Age,password) values(@namee,@phon,@emaill,@vid,@addd,@agi,@pas)";
                        SqlCommand cmd = new SqlCommand(insertquery, con);
                        cmd.Parameters.AddWithValue("@namee", TextBox1.Text); // here i am inserting the data in the database
                        cmd.Parameters.AddWithValue("@phon", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@emaill", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@vid", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@addd", TextBox5.Text);
                        cmd.Parameters.AddWithValue("@agi", TextBox6.Text);
                        cmd.Parameters.AddWithValue("@pas", TextBox7.Text);



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