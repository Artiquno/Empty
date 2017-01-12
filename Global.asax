<%@ Application Language="C#" %>
<%@ Import Namespace="System.Net.Mail" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
            new ScriptResourceDefinition
            {
                Path = "~/vendor/jquery.min.js"
            }
        );
        ScriptManager.ScriptResourceMapping.AddDefinition("bootstrap",
            new ScriptResourceDefinition
            {
                Path = "~/vendor/bootstrap/js/bootstrap.js"
            }
        );
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        if(HttpContext.Current.Server.GetLastError() != null)
        {
            Exception ex = HttpContext.Current.Server.GetLastError().GetBaseException();

            string mailSubject = "Error in page " + Request.Url.ToString();
            string message = string.Empty;
            message += "<strong>Message</strong><br />" + ex.Message + "<br />";
            message += "<strong>Stack Trace</strong><br />" + ex.StackTrace + "<br />";
            message += "<strong>Query String</strong><br />" + Request.QueryString.ToString() + "<br /><br />";

            MailMessage mail = new MailMessage(
                "libraria_error_log@hotmail.com",
                "endri-kurushi@hotmail.com");
            mail.Subject = mailSubject;
            mail.Body = message;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Send(mail);
        }
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
