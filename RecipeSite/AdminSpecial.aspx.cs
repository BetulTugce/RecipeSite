using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class AdminSpecial : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("select * from TBL_FOODS", con.connection());
            SqlDataReader dr = com.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
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