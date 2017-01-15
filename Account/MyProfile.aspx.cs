using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FirstName.Text = Profile.FirstName;
            LastName.Text = Profile.LastName;
        }
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Profile.FirstName = FirstName.Text;
            Profile.LastName = LastName.Text;
        }
    }
}