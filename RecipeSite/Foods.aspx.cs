using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Foods : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string operation = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["ID"];
                operation = Request.QueryString["operation"];

                //List of categories
                SqlCommand com2 = new SqlCommand("select * from TBL_CATEGORIES", con.connection());
                SqlDataReader dr = com2.ExecuteReader();
                DropDownList1.DataTextField = "NAME";
                DropDownList1.DataValueField = "ID";
                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();
            }
            SqlCommand com = new SqlCommand("select * from TBL_FOODS", con.connection());
            SqlDataReader dataReader = com.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();

            if (operation == "delete")
            {
                SqlCommand com2 = new SqlCommand("Delete from TBL_FOODS where ID=@id", con.connection());
                com2.Parameters.AddWithValue("@id", id);
                com2.ExecuteNonQuery();
                con.connection().Close();
            }
        }

        protected void btnList_Click(object sender, ImageClickEventArgs e)
        {
            if (btnList.ImageUrl == "Icon/menu2.png")
            {
                Panel2.Visible = false;
                btnList.ImageUrl = "Icon/menu.png";
            }
            else
            {
                Panel2.Visible = true;
                btnList.ImageUrl = "Icon/menu2.png";
            }
        }

        public int checkFood(string food)
        {
            int result;
            SqlCommand com = new SqlCommand("Select Count(NAME) from TBL_FOODS where NAME='" + food + "'", con.connection());
            result = Convert.ToInt32(com.ExecuteScalar());
            con.connection().Close();
            return result;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (checkFood(txtName.Text) != 0)
            {
                Response.Write("Bu yemek zaten mevcut!");
            }
            //This line of code adds the food into "food" table
            else if (txtName.Text!="" && txtIngredients.Text!="" && txtMethod.Text != "")
            {
                SqlCommand com = new SqlCommand("insert into TBL_FOODS (NAME,INGREDIENTS,METHOD,CATEGORYID) values (@name,@ingredients,@method,@categoryid)", con.connection());
                com.Parameters.AddWithValue("@name", txtName.Text);
                com.Parameters.AddWithValue("@ingredients", txtIngredients.Text);
                com.Parameters.AddWithValue("@method", txtMethod.Text);
                com.Parameters.AddWithValue("@categoryid", DropDownList1.SelectedValue);
                com.ExecuteNonQuery();
                con.connection().Close();
                Response.Write("Yemek eklendi.");
                SqlCommand com2 = new SqlCommand("update TBL_CATEGORIES set QUANTITY=QUANTITY+1 where ID=@id", con.connection());
                com2.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
                com2.ExecuteNonQuery();
                con.connection().Close();
            }
            else
            {
                Response.Write("Lütfen boş alan bırakmayınız!");
            }
        }
    }
}