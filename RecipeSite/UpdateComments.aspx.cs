using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class UpdateComments : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand com = new SqlCommand("select * from TBL_COMMENTS where ID=@id", con.connection());
                com.Parameters.AddWithValue("@id", id);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    txtName.Text = dr[1].ToString();
                    txtMail.Text = dr[2].ToString();
                    txtComment.Text = dr[5].ToString();
                }
              
                //SqlCommand com = new SqlCommand("select NAME,MAIL,COMMENT,NAME from TBL_COMMENTS inner join TBL_FOODS on TBL_COMMENTS.RECIPEID=TBL_FOODS.ID where ID=@id", con.connection());
                //com.Parameters.AddWithValue("@id", id);
                //SqlDataReader dr = com.ExecuteReader();
                //while (dr.Read())
                //{
                //    txtName.Text = dr[0].ToString();
                //    txtMail.Text = dr[1].ToString();
                //    txtComment.Text = dr[2].ToString();
                //    txtFood.Text = dr[3].ToString();
                //}
                //con.connection().Close();
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("Update TBL_COMMENTS set COMMENT=@comment, CONFIRMATION=@confirmation where ID=@id", con.connection());
            com.Parameters.AddWithValue("@comment", txtComment.Text);
            com.Parameters.AddWithValue("@confirmation", "True");
            com.Parameters.AddWithValue("@id", id);
            com.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}