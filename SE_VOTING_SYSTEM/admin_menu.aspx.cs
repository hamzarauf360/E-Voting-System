using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_VOTING_SYSTEM
{
    public partial class admin_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) // user redirected to following page on logout
        {
            Response.Redirect("Home_test.aspx");
        }
    }
}