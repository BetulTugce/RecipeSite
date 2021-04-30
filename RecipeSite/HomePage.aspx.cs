using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class HomePage : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("select * from TBL_FOODS", con.connection());
            SqlDataReader dr = com.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}