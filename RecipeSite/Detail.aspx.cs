using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Detail : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"];
            SqlCommand com = new SqlCommand("select NAME from TBL_FOODS where ID=@id", con.connection());
            com.Parameters.AddWithValue("@id", id);
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                lblName.Text = dr[0].ToString();
            }
            con.connection().Close();


            SqlCommand com2 = new SqlCommand("select * from TBL_COMMENTS where RECIPEID=@id AND CONFIRMATION=1", con.connection());
            com2.Parameters.AddWithValue("@id", id);
            SqlDataReader dr2 = com2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("insert into TBL_COMMENTS (NAME,MAIL,COMMENT,RECIPEID) values" +
                "(@name,@mail,@comment,@id)", con.connection());
            com.Parameters.AddWithValue("@name", txtName.Text);
            com.Parameters.AddWithValue("@mail", txtMail.Text);
            com.Parameters.AddWithValue("@comment", txtComment.Text);
            com.Parameters.AddWithValue("@id", id);
            com.ExecuteNonQuery();
            con.connection().Close();
            Response.Write("Yorumunuz gönderilmiştir.");
        }
    }
}