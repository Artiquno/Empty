﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Ajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Time.Text = DateTime.Now.ToString();
    }

    protected void Timer_Tick(object sender, EventArgs e)
    {
        
    }
}