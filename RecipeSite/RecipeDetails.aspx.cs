using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class RecipeDetails : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand com = new SqlCommand("select * from TBL_RECIPES where ID=@id", con.connection());
                com.Parameters.AddWithValue("@id", id);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    txtName.Text = dr[1].ToString();
                    txtIngredients.Text = dr[2].ToString();
                    txtMethod.Text = dr[3].ToString();
                    txtOwner.Text = dr[5].ToString();
                    txtMail.Text = dr[6].ToString();
                }
                con.connection().Close();

                if (Page.IsPostBack == false)
                {
                    //List of categories
                    SqlCommand com2 = new SqlCommand("select * from TBL_CATEGORIES", con.connection());
                    SqlDataReader dr2 = com2.ExecuteReader();
                    DropDownList1.DataTextField = "NAME";
                    DropDownList1.DataValueField = "ID";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }                               
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {              
            SqlCommand com = new SqlCommand("update TBL_RECIPES set STATE=1 where ID=@id", con.connection());
            com.Parameters.AddWithValue("@id", id);
            com.ExecuteNonQuery();
            con.connection().Close();

            SqlCommand com2 = new SqlCommand("insert into TBL_FOODS (NAME,INGREDIENTS,METHOD,CATEGORYID) values (@name,@ingredients,@method,@categoryid)", con.connection());
            com2.Parameters.AddWithValue("@name", txtName.Text);
            com2.Parameters.AddWithValue("@ingredients", txtIngredients.Text);
            com2.Parameters.AddWithValue("@method", txtMethod.Text);
            com2.Parameters.AddWithValue("@categoryid", DropDownList1.SelectedValue);
            com2.ExecuteNonQuery();
            con.connection().Close();

            SqlCommand com3 = new SqlCommand("update TBL_CATEGORIES set QUANTITY=QUANTITY+1 where ID=@id", con.connection());
            com3.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
            com3.ExecuteNonQuery();
            con.connection().Close();
        }
    }
}