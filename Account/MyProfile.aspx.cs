using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FirstName.Text = Profile.FirstName;
            LastName.Text = Profile.LastName;
        }

        List<List<string>> datasource = new List<List<string>>();
        var cart = (List<long>)(Session[User.Identity.Name + "-cart"]);

        if (cart != null)
        {
            SqlConnection sql = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionStringLibraria"].ConnectionString);
            string query = "SELECT Id, Author, Title, CoverUrl FROM Books WHERE ";

            foreach (var id in cart)
            {
                query += "Id = '" + id.ToString() + "' OR ";
            }
            query = query.Substring(0, query.Length - 3);
            query += "ORDER BY Author";

            try
            {
                sql.Open();

                SqlCommand cmd = new SqlCommand(query, sql);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    datasource.Add(
                        new List<string>()
                        {
                            (string)reader["Author"],
                            (string)reader["Title"],
                            (string)reader["CoverUrl"]
                        }
                    );
                }
            }
            catch (SqlException)
            { }
            finally
            {
                sql.Close();
            }

            ShoppingCartRepeater.DataSource = datasource;
            ShoppingCartRepeater.DataBind();
        }
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Profile.FirstName = FirstName.Text;
            Profile.LastName = LastName.Text;
        }
    }
}