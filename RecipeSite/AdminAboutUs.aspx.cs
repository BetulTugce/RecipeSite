using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class AdminAboutUs : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand com = new SqlCommand("select * from TBL_ABOUTUS", con.connection());
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    txtAboutUs.Text = dr[0].ToString();
                }
                con.connection().Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("Update TBL_ABOUTUS set TEXT=@text", con.connection());
            com.Parameters.AddWithValue("@text", txtAboutUs.Text);
            com.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}