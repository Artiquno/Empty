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
        //for (int i = 0; i < 10; i++)
        //{
        //    dataSource.Add("Book" + i.ToString());
        //}

        var path = Server.MapPath("~/img/works");
        var files = Directory.EnumerateFiles(path);
        string vPath = "/img/works/";
        
        foreach(var file in files)
        {

            FileInfo fInfo = new FileInfo(file);

            string url = vPath + fInfo.Name;

            dataSource.Add(new Book()
            {
                AltText = url,
                Author = url,
                Description = "DESCRIPTION: " + url,
                ImageUrl = url,
                Title = url
            });
        }

        this.repeaterBooks.DataSource = dataSource;
        this.repeaterBooks.DataBind();
    }
}