using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RecipeSite
{
    public class sqlclass
    {
        public SqlConnection connection()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J7QHQ6K\SQLEXPRESS01;Initial Catalog=Dbo_Recipe;Integrated Security=True");
            con.Open();
            return con;
        }
    }
}