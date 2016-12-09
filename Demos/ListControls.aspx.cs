using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_ListControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] quotes = new string[]
        {
            "They seem to have broken your fall",
            "Oh! It's a water sausage!",
            "I just wasn't ready for the responsibility",
            "Hi! I'm Flowey. Flowey The Flower! *wink*"
        };
        
        Label1.Text = quotes[DropDownList1.SelectedIndex] + "<br /><br />In the CBL you selected:</br />";

        foreach (ListItem item in CheckBoxList1.Items)
        {
            if(item.Selected)
            {
                Label1.Text += item.Text + "<br />";
            }
        }
    }
}