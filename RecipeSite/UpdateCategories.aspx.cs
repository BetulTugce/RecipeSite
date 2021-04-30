using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class UpdateCategories : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"];
            if (Page.IsPostBack == false) //Prevents reload the page
            {
                SqlCommand com = new SqlCommand("select * from TBL_CATEGORIES where ID=@id", con.connection());
                com.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = com.ExecuteReader();
                while (dataReader.Read())
                {
                    txtName.Text = dataReader[1].ToString();
                    txtQuantity.Text = dataReader[2].ToString();
                }
                con.connection().Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("update TBL_CATEGORIES set NAME=@name, QUANTITY=@quantity where ID=@id", con.connection());
            com.Parameters.AddWithValue("@name", txtName.Text);
            com.Parameters.AddWithValue("@quantity", txtQuantity.Text);
            com.Parameters.AddWithValue("@id", id);
            com.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}