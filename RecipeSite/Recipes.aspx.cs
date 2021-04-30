using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Recipes : System.Web.UI.Page
    {

        sqlclass con = new sqlclass();
        string operation = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["ID"];
                operation = Request.QueryString["operation"];

                SqlCommand com = new SqlCommand("select * from TBL_RECIPES where STATE=0", con.connection());
                SqlDataReader dr = com.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }

            if (operation == "delete")
            {
                SqlCommand com2 = new SqlCommand("Delete from TBL_RECIPES where ID=@id", con.connection());
                com2.Parameters.AddWithValue("@id", id);
                com2.ExecuteNonQuery();
                con.connection().Close();
            }
        }

        protected void btnList_Click(object sender, ImageClickEventArgs e)
        {
            if (btnList.ImageUrl == "Icon/menu2.png")
            {
                Panel2.Visible = false;
                btnList.ImageUrl = "Icon/menu.png";
            }
            else
            {
                Panel2.Visible = true;
                btnList.ImageUrl = "Icon/menu2.png";
            }
        }
    }
}