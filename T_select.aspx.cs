using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Topic_10
{
    public partial class T_select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int total = 0;
            int freight = 60;

           int foodID = Convert.ToInt32(Request["petfood"]);

            //右邊框架顯示(購物車連結)
            if (Session["login"] == "true" && Session["username"] != null)
            {
                status.Text = "Hello ! " + Session["username"].ToString();
                cartLink.Text = "<a href=\"T_MyCart.aspx\" class=\"view_cart\">購物車清單</a>";
                logInOut.Text = $"登出";
            }
            else
            {
                status.Text = "我的購物車";
                cartLink.Text = "";
                logInOut.Text = $"登入";
            }


            //左邊框架顯示(商品)
            if (Session["login"] == "true" && Session["username"] != null && Request["petfood"] != null)
            {
                string sqlInquire = $"SELECT *  FROM  PetsFood WHERE id = {Request["petfood"]}";
                string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString3"].ConnectionString;
                SqlConnection conn = new SqlConnection(s_data);

                SqlCommand cmd = new SqlCommand(sqlInquire, conn);
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);


                //左邊商品細節顯示
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    L_content.Text = dr["content"].ToString();
                    L_price.Text = dr["price"].ToString();
                    L_image.Text = $"<img src=\"{dr["image"].ToString()}\" alt=\"\" title=\"\" border=\"0\" />";

                }
            }

        }


        protected void OnCart_Click(object sender, EventArgs e)
        {
            //加入購物車
            int cusID = 0;
            int foodID = 0;
            int CartAmount = 0;
            if (Session["login"] == "true" && Session["username"] != null)
            {
                cusID = Convert.ToInt32(Session["userID"]);
                foodID = Convert.ToInt32(Request["petfood"]);
                CartAmount = Convert.ToInt32(amountIN.Text.ToString());
                string sql_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString3"].ConnectionString;

                SqlConnection sqlconn = new SqlConnection(sql_data);
                sqlconn.Open();

                string sqlInquire = $"INSERT INTO Cart(customerID , PetsFoodID , amount) VALUES(@customerID , @PetsFoodID ,@amount) ";
                SqlCommand cmd = new SqlCommand(sqlInquire, sqlconn);

                cmd.Parameters.Add("@customerID", SqlDbType.NVarChar);
                cmd.Parameters["@customerID"].Value = cusID;
                cmd.Parameters.Add("@PetsFoodID", SqlDbType.NVarChar);
                cmd.Parameters["@PetsFoodID"].Value = foodID;
                cmd.Parameters.Add("@amount", SqlDbType.NVarChar);
                cmd.Parameters["@amount"].Value = CartAmount;

                cmd.ExecuteNonQuery();

                sqlconn.Close();

                Response.Redirect("T_MyCart.aspx");
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}