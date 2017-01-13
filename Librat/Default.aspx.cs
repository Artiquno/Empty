using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrariaModel;

public partial class Librat_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Book> dataSource = new List<Book>();
        string q = Request.QueryString.Get("q");
        if (q == null)
            q = string.Empty;

        using (LibrariaEntities ent = new LibrariaEntities())
        {
            var books = from b in ent.Books
                        where (b.Genre.Contains(q) ||
                            b.Author.Contains(q) ||
                            b.Title.Contains(q) ||
                            b.ISBN10.Contains(q) ||
                            b.ISBN13.Contains(q)) == true
                        orderby b.TimesRead descending
                        select b;

            foreach (var book in books)
            {
                dataSource.Add(new Book()
                {
                    AltText = book.Title,
                    Author = book.Author,
                    Description = book.Description,
                    ImageUrl = book.CoverUrl,
                    Title = book.Title,
                    Genre = new List<string>(book.Genre.Replace(", ", ",").Split(','))
                });
            }
        }
        
        Search.Text = dataSource.Count() + " " + (dataSource.Count() == 1 ? " liber " : " libra ") + "per kerkimin " + q;

        this.repeaterBooks.DataSource = dataSource;
        this.repeaterBooks.DataBind();
    }
}