using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Contact : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("insert into TBL_MESSAGES (NAME,MAIL,TITLE,MESSAGE) values (@name,@mail,@title,@message)", con.connection());
            com.Parameters.AddWithValue("@name", txtName.Text);
            com.Parameters.AddWithValue("@mail", txtMail.Text);
            com.Parameters.AddWithValue("@title", txtTitle.Text);
            com.Parameters.AddWithValue("@message", txtMessage.Text);
            com.ExecuteNonQuery();
            con.connection().Close();
            Response.Write("Mesajınız iletilmiştir.");
        }
    }
}