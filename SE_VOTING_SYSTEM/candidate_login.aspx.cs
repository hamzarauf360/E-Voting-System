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
    public partial class candidate_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text != "" && TextBox2.Text != "")) // if both fields have some text
            {
                bool flag = false;
                string cid = TextBox1.Text;
                string pass = TextBox2.Text;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string search_query = "select CandidateID,password from candidate_info where CandidateID=@cid and password=@pass";
                SqlCommand cmd1 = new SqlCommand(search_query, con);
                cmd1.Parameters.Add("cid", @cid);
                cmd1.Parameters.Add("pass", @pass);

                SqlDataReader read = cmd1.ExecuteReader();
                if (read.Read()) // checks whther any Candidate exists with such id and password?
                {
                    flag = true;
                }
                if (flag) // if exists then redirects
                {
                    Response.Redirect("just_welcome.aspx");
                }
                else // else shows error
                {
                    invalid.Text = "Enter correct Info please";
                }



            }
            else
            {
                invalid.Text = "Enter all Info please";

            }
        }
    }
}