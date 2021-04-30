using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Categories : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string id = "";
        string operation = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["ID"];
                operation = Request.QueryString["operation"];
            }
            SqlCommand com = new SqlCommand("select * from TBL_CATEGORIES", con.connection());
            SqlDataReader dataReader = com.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();

            //Delete
            if (operation == "delete")
            {
                SqlCommand com2 = new SqlCommand("Delete from TBL_CATEGORIES where ID=@id", con.connection());
                com2.Parameters.AddWithValue("@id", id);
                com2.ExecuteNonQuery();
                con.connection().Close();
            }
        }

       

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("insert into TBL_CATEGORIES (NAME) values (@name)", con.connection());
            com.Parameters.AddWithValue("@name", txtName.Text);
            com.ExecuteNonQuery();
            con.connection().Close();
        }

        protected void btnListCategories_Click(object sender, ImageClickEventArgs e)
        {
            if (btnListCategories.ImageUrl == "Icon/menu2.png")
            {
                Panel2.Visible = false;
                btnListCategories.ImageUrl = "Icon/menu.png";
            }
            else
            {
                Panel2.Visible = true;
                btnListCategories.ImageUrl = "Icon/menu2.png";
            }
        }
    }
}