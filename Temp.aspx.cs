using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Temp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Book> dataSource = new List<Book>();

        var path = Server.MapPath("~/img/works");
        var files = Directory.EnumerateFiles(path);
        string vPath = "/img/works/";
        
        for(int i = 0; i < 5; ++i)
        {

            FileInfo fInfo = new FileInfo(files.ElementAt(i));

            string url = vPath + fInfo.Name;

            //Note: Take these from a DB
            dataSource.Add(new Book()
            {
                AltText = url,
                Author = url,
                Description = "DESCRIPTION: " + url,
                ImageUrl = url,
                Title = url,
                Genre = new List<string>(fInfo.Name.Split(new char[] { '-', '.' }))
            });
        }

        this.repeaterBooks.DataSource = dataSource;
        this.repeaterBooks.DataBind();
    }
}