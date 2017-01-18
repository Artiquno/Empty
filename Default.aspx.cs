using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibrariaModel;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Book> dataSource = new List<Book>();

        using (LibrariaEntities ent = new LibrariaEntities())
        {
            var books = (from b in ent.Books
                        orderby b.TimesRead descending
                        select b).Take(5);

            foreach (var book in books)
            {
                dataSource.Add(new Book()
                {
                    Id = book.Id,
                    DlUrl = book.BookUrl,
                    TimesRead = book.TimesRead,
                    AltText = book.Title,
                    Author = book.Author,
                    Description = book.Description,
                    ImageUrl = book.CoverUrl,
                    Title = book.Title,
                    Genre = new List<string>(book.Genre.Replace(", ", ",").Split(','))
                });
            }
        }

        
        this.repeaterBooks.DataSource = dataSource;
        this.repeaterBooks.DataBind();
    }
}