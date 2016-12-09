using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Container : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = CheckBox1.Checked;
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        string[] quotes = new string[]
        {
            "They seem to have broken your fall",
            "Oh! It's a water sausage!",
            "I just wasn't ready for the responsibility",
            "Hi! I'm Flowey. Flowey The Flower! <em>*wink*</em>"
        };

        Result.Text = "Your name is " + YourName.Text + " huh?<br />" + quotes[UseItem.SelectedIndex];
    }
}