using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace RecipeSite
{
    public partial class Login : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Hashing guards against the possibility that someone who gains unauthorized access to the database can retrieve the passwords of every user 
        //in the system. This line of code turns the password into another String, called the hashed password.
        static string ComputeMD5Hash(string text)
        {
            MD5 md5Encrypting = new MD5CryptoServiceProvider();
            byte[] bytes = md5Encrypting.ComputeHash(Encoding.UTF8.GetBytes(text));
            StringBuilder builder = new StringBuilder();
            foreach (var item in bytes)
            {
                builder.Append(item.ToString("x2"));
            }
            return builder.ToString();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("select * from TBL_ADMIN where NAME=@name AND Password=@password", con.connection());
            com.Parameters.AddWithValue("@name", txtName.Text);
            com.Parameters.AddWithValue("@password", ComputeMD5Hash(txtPassword.Text));
            com.ExecuteNonQuery();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Admin.aspx");
            }
            else Response.Write("Kullanıcı adı ya da şifre hatalı!");
            con.connection().Close();
        }
    }
}