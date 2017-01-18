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

        uint page;
        if (uint.TryParse(Request.QueryString.Get("page"), out page))
            ;
        else
            page = 0;

        const uint take = 10;  // Books per page
        uint skip = page * take;

        CurrPage.Text = (page + 1).ToString();
        PagerNext.NavigateUrl = "?q=" + q + "&page=" + (page + 1).ToString();
        if (page > 0)
        {
            PagerPrev.NavigateUrl = "?q=" + q + "&page=" + (page - 1).ToString();
            PagerPrev.Visible = true;
        }

        using (LibrariaEntities ent = new LibrariaEntities())
        {
            var books = (from b in ent.Books
                        where (b.Genre.Contains(q)
                        || b.Author.Contains(q)
                        || b.Title.Contains(q)
                        || b.ISBN10.Contains(q)
                        || b.ISBN13.Contains(q)) == true
                        orderby b.TimesRead descending
                        select b)
                        .Skip((int)skip)    
                        .Take((int)take);   // Casting needed because C#

            // Bug: Still shows if count == take
            if (books.Count() < take)
            {
                PagerNext.Visible = false;
            }

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
        
        Search.Text = dataSource.Count() + " "
            + (dataSource.Count() == 1 ? " liber " : " libra ")
            + (q == string.Empty ? "" : "per kerkimin " + q);
         
        this.repeaterBooks.DataSource = dataSource;
        this.repeaterBooks.DataBind();
    }
}