using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
    public string Title
    {
        get;
        set;
    }
    public string Description { get; set; }
    public string ImageUrl { get; set; }
    public string Author { get; set; }
    public string AltText { get; set; }
}