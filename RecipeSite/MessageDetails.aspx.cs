using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class MessageDetails : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"];
            SqlCommand com = new SqlCommand("select * from TBL_MESSAGES where ID=@id", con.connection());
            com.Parameters.AddWithValue("@id", id);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                lblName.Text = dr[1].ToString();
                lblTitle.Text = dr[2].ToString();
                lblMail.Text = dr[3].ToString();
                lblMessage.Text = dr[4].ToString();
            }
            con.connection().Close();
        }
    }
}