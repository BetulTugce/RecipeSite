using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Suggest : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("insert into TBL_RECIPES(NAME,INGREDIENTS,METHOD,IMAGE,OWNER,MAIL) values " +
                "(@name,@ingredients,@method,@image,@owner,@mail)", con.connection());
            com.Parameters.AddWithValue("@name", txtRecipeName.Text);
            com.Parameters.AddWithValue("@ingredients", txtIngredients.Text);
            com.Parameters.AddWithValue("@method", txtMethod.Text);
            com.Parameters.AddWithValue("@image", FileUpload1.FileName);
            com.Parameters.AddWithValue("@owner", txtName.Text);
            com.Parameters.AddWithValue("@mail", txtMail.Text);
            com.ExecuteNonQuery();
            con.connection().Close();
            Response.Write("Tarifiniz gönderilmiştir.");
        }
    }
}