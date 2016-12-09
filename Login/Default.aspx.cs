using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        Snitch.Text += "Hello " + Name.Text + "!<br />";
        Snitch.Text += "<em>*Shouts*</em> YOUR PASSWORD IS " + Pass.Text + ". DON'T WORRY! IT'S A SECRET!";
    }
}