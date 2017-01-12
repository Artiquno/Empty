using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage("libraria_error_log@hotmail.com", "endri-kurushi@hotmail.com");
        mail.Subject = "Just Testing";
        mail.Body = "Just testing mailing in ASP.NET so don't mind me.";

        SmtpClient smtp = new SmtpClient();
        smtp.Send(mail);
    }
}