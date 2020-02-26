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
    public partial class cast_vote_voter : System.Web.UI.Page
    {
        string vid="";
        int Cadidate_Votes=-1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Session["voter"].ToString()))  // the voter's id maintained in a session and is recieved by cast vote page upon page login
            {
                vid = Session["voter"].ToString();

                Label3.Text = vid;
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)// when vote cast button is submitted
        {
            if(TextBox1.Text!="")
            {
                invalid.Text = "";
                bool cand_valid=chk_candidate(); //chk candidate id is valid
                bool voter_valid=chk_voter();  //check voter is casting vote for first time
                if(cand_valid && voter_valid) // if candidate exists with such id and voter is casting vote for 1st time
                {
                    update_vote_count(); //vote count is updated for a candidate if both  conditions hold true
                    invalid.Text = "Vote Casted";
                    TextBox1.Text = "";

                }
                else if(cand_valid==false) // if voter casting for 1st time and candidate does not exists
                {
                    invalid.Text = "No such candidate found";

                }
                else  // if candidate exists but voter has already casted a vote
                {
                    invalid.Text = "You have already casted a vote";

                }
               
            }
            else
            {
                invalid.Text = "Enter an id please";
            }
        }
        protected void Button2_Click(object sender, EventArgs e) //for logout
        {
            Response.Redirect("Home_test.aspx");
        }
        protected bool chk_candidate() //to find that such candidate exists for whom voter wants to cast vote
        {
            bool flag = false;
            string cid = TextBox1.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string search_query = "select votecount from candidate_info where CandidateID=@cid";
            SqlCommand cmd1 = new SqlCommand(search_query, con);
            cmd1.Parameters.Add("cid", @cid);

            SqlDataReader read = cmd1.ExecuteReader();
            if (read.Read()) // if that candidate exists
            {
                flag = true;
                Cadidate_Votes = Convert.ToInt32(read["votecount"].ToString());
            }
           
            return flag;
        }
        protected void update_vote_count() //updates vote count for candidate
        {
            Cadidate_Votes++; //increments the candidate votes
            string cid = TextBox1.Text;
            string nvid = vid;
            using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con1.Open();

                string query = "update candidate_info set votecount=@Votes where CandidateID=@cid";
                SqlCommand cmd = new SqlCommand(query, con1);
                cmd.Parameters.AddWithValue("@Votes", Cadidate_Votes);
                cmd.Parameters.AddWithValue("@cid", cid);
                cmd.ExecuteNonQuery();
                con1.Close();
            }
            using(SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString)){
                con2.Open();

                string query = "update voter_info set vote_casted=@stat where VoterID=@nvid";
                SqlCommand cmd = new SqlCommand(query, con2);
                cmd.Parameters.AddWithValue("@stat", "1");
                cmd.Parameters.AddWithValue("@nvid", nvid);
                cmd.ExecuteNonQuery();
                con2.Close();
            }
        }
        protected bool chk_voter() //checks voter is casting vote for 1st time
        {
            bool flag = false;
            string nvid = vid;
            string stat="";
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con2.Open();

                string query = "select vote_casted from voter_info where VoterID=@nvid";
                SqlCommand cmd = new SqlCommand(query, con2);
                
                cmd.Parameters.AddWithValue("@nvid", nvid);
              SqlDataReader read = cmd.ExecuteReader();
            if (read.Read()) 
            {
               stat = read["vote_casted"].ToString();
            }
            if(stat=="0") //if stat = 0 a db attribute which tells that voter has not casted a vote before
            {
                flag=true;
            }
                con2.Close();

            return flag;
        }
     
    }
}