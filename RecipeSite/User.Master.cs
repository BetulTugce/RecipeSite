using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class User : System.Web.UI.MasterPage
    {
        sqlclass con = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("select * from TBL_CATEGORIES", con.connection());
            SqlDataReader reader = com.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }
    }
}