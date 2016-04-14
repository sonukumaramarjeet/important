using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "234";
        if (Page.IsPostBack)
        {
            string email = Request.Form["inputEmail"].ToString();
            Response.Write(email);
        }
    }
}