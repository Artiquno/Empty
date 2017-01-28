using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrariaModel;
using System.IO;

public partial class Controls_BookControl : System.Web.UI.UserControl
{
    public Book Book { get; set; }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> source = new List<string>();

        foreach(string genre in Book.Genre)
        {
            source.Add(genre);
        }

        genreRep.DataSource = source;
        genreRep.DataBind();

        Image.ImageUrl = "~/img/works/" + Book.ImageUrl;
        Image.AlternateText = Book.AltText;
    }

    protected void DL_Click(object sender, EventArgs e)
    {
        using (LibrariaEntities ent = new LibrariaEntities())
        {
            var book = (from b in ent.Books
                        where b.Id == Book.Id
                        select b).First();

            if (Book.Title == "The Book of Merlyn")
                --book.TimesRead;
            else
                ++book.TimesRead;

            ent.SaveChanges();
        }

        string path = Path.GetFullPath(Server.MapPath("~/files/pdf/" + Book.DlUrl));
        FileInfo file = new FileInfo(path);
        if (file.Exists)
        {
            Response.Clear();
            Response.ClearHeaders();
            Response.ClearContent();

            Response.AddHeader("Content-Disposition", "attachment; filename=" + Book.DlUrl);
            Response.AddHeader("Content-Length", file.Length.ToString());
            Response.ContentType = "application/pdf";
            Response.Flush();

            Response.TransmitFile(path);
            Response.End();
        }
        
    }

    protected void AddToCart(object sender, EventArgs args)
    {
        string sessionName = Page.User.Identity.Name + "-cart";

        if (Session[sessionName] == null)
        {
            Session[sessionName] = new List<long>();
        }

        ((List<long>)Session[sessionName]).Add(Book.Id);
    }
}