using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class UpdateFoods : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["ID"];
            if (Page.IsPostBack == false) //Prevents reload the page
            {
                SqlCommand com = new SqlCommand("select * from TBL_FOODS where ID=@id", con.connection());
                com.Parameters.AddWithValue("@id", id);
                SqlDataReader dataReader = com.ExecuteReader();
                while (dataReader.Read())
                {
                    txtName.Text = dataReader[1].ToString();
                    txtIngredients.Text = dataReader[2].ToString();
                    txtMethod.Text = dataReader[3].ToString();
                }
                con.connection().Close();

                if (Page.IsPostBack == false)
                {
                    //List of categories
                    SqlCommand com2 = new SqlCommand("select * from TBL_CATEGORIES", con.connection());
                    SqlDataReader dr = com2.ExecuteReader();
                    DropDownList1.DataTextField = "NAME";
                    DropDownList1.DataValueField = "ID";
                    DropDownList1.DataSource = dr;
                    DropDownList1.DataBind();                   
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Images/" + FileUpload1.FileName));

            SqlCommand com = new SqlCommand("update TBL_FOODS set NAME=@name, INGREDIENTS=@ingredients, METHOD=@method, CATEGORYID=@categoryid, IMAGE=@image where ID=@id", con.connection());
            com.Parameters.AddWithValue("@name", txtName.Text);
            com.Parameters.AddWithValue("@ingredients", txtIngredients.Text);
            com.Parameters.AddWithValue("@method", txtMethod.Text);
            com.Parameters.AddWithValue("@categoryid", DropDownList1.SelectedValue);
            com.Parameters.AddWithValue("@id", id);
            com.Parameters.AddWithValue("@image", "~/Images/" + FileUpload1.FileName);
            com.ExecuteNonQuery();
            con.connection().Close();
            Response.Write("Güncelleme yapılmıştır.");
        }

        protected void btnSpecial_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("update TBL_FOODS set STATE=0", con.connection());
            com.ExecuteNonQuery();
            con.connection().Close();

            SqlCommand com2 = new SqlCommand("update TBL_FOODS set STATE=1 where ID=@id", con.connection());
            com2.Parameters.AddWithValue("@id", id);
            com2.ExecuteNonQuery();
            Response.Write("Günün yemeği olarak kaydedilmiştir.");
            con.connection().Close();
        }
    }
}