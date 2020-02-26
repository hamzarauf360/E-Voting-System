using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
namespace SE_VOTING_SYSTEM
{
    public partial class voter_forgot : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if ((TextBox1.Text != "")) // if fields have some text
            {
                bool flag = false;
                string vid = TextBox1.Text;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string search_query = "select VoterID from voter_info where VoterID=@vid";
                SqlCommand cmd1 = new SqlCommand(search_query, con);
                cmd1.Parameters.Add("vid", @vid);

                SqlDataReader read = cmd1.ExecuteReader();
                if (read.Read()) // checks whther any voter exists with such id
                {
                    flag = true;
                }
                if (flag) // if exists then send him his password to his mail picked from db
                {
                    sendpas(vid);
                }
                else // else shows error
                {
                    invalid.Text = "No voter with such id found!";
                }
            }
            else
            {
                invalid.Text="Please enter an id";
            }
        }
        protected void sendpas(string vid)
        {
            invalid.Text = "";
            string pas = "";
            bool iflag=false;
            string mail="";
            string admin_mail = ""; // admin adds his mail here for testing purpose u can add ur mail here
            string admin_password = ""; //admin adds his password here for testing u can add ur mail password here
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string search_query = "select Email,password from voter_info where VoterID=@vid"; //select email of that voter whose id was entered
            SqlCommand cmd1 = new SqlCommand(search_query, con);
            cmd1.Parameters.Add("vid", @vid);
            
            SqlDataReader read = cmd1.ExecuteReader();
            if (read.Read()) // checks whther any voter exists with such id 
            {
                iflag = true;
                mail = read["Email"].ToString(); // email corresponding to the entered id is found  which is secured
                pas = read["password"].ToString();  //here for security the recovered password is sent to the email of only that person whose id was entered in textbox
            }
            if (iflag) // if found that voter id is valid then his password is sent to him at his extracted email from db
            {
               
                MailMessage mailmessage = new MailMessage(admin_mail,mail); //here admins sends mail to the voter's mail
                mailmessage.Subject = "Password Reset"; //this is subject of mail
                mailmessage.Body = pas; //this is the body where voter's password is sent to him 
                SmtpClient smtpclient = new SmtpClient("smtp.gmail.com", 587);
                smtpclient.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = admin_mail, 
                    Password = admin_password 
                };
                smtpclient.EnableSsl = true;
                smtpclient.Send(mailmessage);

            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_test.aspx");
        }
    }
}