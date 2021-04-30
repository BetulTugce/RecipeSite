using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Special : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("select * from TBL_FOODS where STATE=1", con.connection());
            SqlDataReader reader = com.ExecuteReader();
            DataList2.DataSource = reader;
            DataList2.DataBind();
        }
    }
}