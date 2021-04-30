using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class CategoryDetails : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string categoryId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryId = Request.QueryString["ID"];
            SqlCommand com = new SqlCommand("select * from TBL_FOODS where CATEGORYID=@categoryid", con.connection());
            com.Parameters.AddWithValue("@categoryid", categoryId);
            SqlDataReader dataReader = com.ExecuteReader();
            DataList2.DataSource = dataReader;
            DataList2.DataBind();
        }
    }
}