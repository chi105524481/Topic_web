using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Topic_10
{
    public partial class T_MyCart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            int total = 0;
            int freight = 60;

            //右邊框架顯示(購物車連結)
            if (Session["login"] == "true" && Session["username"] != null)
            {
                Cart_status.Text = "Hello ! " + Session["username"].ToString();
                //CartLink.Text = "<a href=\"cart.html\" class=\"view_cart\">購物車清單</a>";
                logInOut.Text = $"登出";
            }
            else
            {
                Cart_status.Text = "我的購物車";
                CartLink.Text = "";
                logInOut.Text = $"登入";
            }


            //左邊框架顯示(商品)
            if (Session["login"] == "true" && Session["username"] != null)
            {
                string sqlInquire = "SELECT *  FROM Cart , PetsFood where customerID = 3 and (Cart.PetsFoodID = PetsFood.id)";
                string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString3"].ConnectionString;
                SqlConnection conn = new SqlConnection(s_data);
                if (Session["userID"] != null)
                {
                    sqlInquire = $"SELECT *  FROM Cart , PetsFood where customerID = {Session["userID"]} " +
                        $"and (Cart.PetsFoodID = PetsFood.id)";
                }
                SqlCommand cmd = new SqlCommand(sqlInquire, conn);
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);

                //購物車內容
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    TableRow Tr = new TableRow();
                    TableCell Tc = new TableCell();

                    Tc.Controls.Add(new LiteralControl(
                        String.Format($"<tr border=\"1\" class=\"cart_thumb\">" +
                        $"<td>{dr["pet"]}{dr["kind"]}</td>" +
                        //$"<td>{dr["kind"]}</td>" +
                        $"<td>{dr["content"]}</td>" +
                        $"<td>{dr["price"]}</td>" +
                        $"<td>{dr["amount"]}</td>" +
                        $"</tr>")));
                    Tr.Cells.Add(Tc);
                    Table1.Rows.Add(Tr);

                    //總額計算
                    total += (Convert.ToInt32(dr["price"]) * Convert.ToInt32(dr["amount"]));

                }

                //顯示 總額與運費
                TableRow total_tr = new TableRow();
                TableCell total_tc = new TableCell();
                total_tc.Controls.Add(new LiteralControl(
                    String.Format($"<tr border=\"1\" class=\"cart_thumb\">" +
                    $"<td colspan=\"4\" class=\"cart_total\"><span class=\"red\">金額 : {total}元 </span></td>" +
                    $"</tr>")));
                //total_tc.Controls.Add(new LiteralControl(
                //    String.Format($"<tr border=\"1\" class=\"cart_thumb\">" +
                //    $"<td colspan=\"4\" class=\"cart_total\"><span class=\"red\">總金額:</span></td>" +
                //    $"</tr>")));

                total_tr.Cells.Add(total_tc);
                Table1.Rows.Add(total_tr);
            }


        }

        protected void buy_Click(object sender, EventArgs e)
        {
            //清空購物車，新增進訂單
            string sql_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString3"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(sql_data);
            sqlconn.Open();
            //新增 Orders
            string sqlInsertOrders = $"INSERT INTO Orders(CustomerID,PetsFoodID,amount,amountDue) " +
                $"VALUES(@CustomerID , @PetsFoodID ,@amount ,@amountDue) ";            

            //查詢 Carts
            string sqlSelectCustomers = $"SELECT *  FROM Cart , PetsFood " +
                $"where customerID = {Session["userID"]} " +
                $"and (Cart.PetsFoodID = PetsFood.id)";

            SqlCommand cmdSelect = new SqlCommand(sqlSelectCustomers, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmdSelect);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            //讀出查詢資料，新增到Orders
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                //這行新增的Command不能放在foreach外面，會報錯
                SqlCommand cmdInsert = new SqlCommand(sqlInsertOrders, sqlconn);
                int B_amountDue = Convert.ToInt32(dr["amount"]) * Convert.ToInt32(dr["price"]);
                int B_CustomersID = Convert.ToInt32(Session["userID"]);
                int B_PetsFoodID = Convert.ToInt32(dr["PetsFoodID"]);
                int B_amount = Convert.ToInt32(dr["amount"]);

                cmdInsert.Parameters.Add("@CustomerID", SqlDbType.Int);
                cmdInsert.Parameters["@CustomerID"].Value = B_CustomersID;
                cmdInsert.Parameters.Add("@PetsFoodID", SqlDbType.Int);
                cmdInsert.Parameters["@PetsFoodID"].Value = B_PetsFoodID;
                cmdInsert.Parameters.Add("@amount", SqlDbType.Int);
                cmdInsert.Parameters["@amount"].Value = B_amount;
                cmdInsert.Parameters.Add("@amountDue", SqlDbType.Int);
                cmdInsert.Parameters["@amountDue"].Value = B_amountDue;

                cmdInsert.ExecuteNonQuery();

            }

            //刪除 Cart
            string sqlDeleteCart = $"DELETE FROM Cart WHERE customerID = {Session["userID"]}";
            SqlCommand cmdDelete = new SqlCommand(sqlDeleteCart, sqlconn);
            cmdDelete.ExecuteNonQuery();
            sqlconn.Close();

            Response.Redirect("T_detail.aspx");
        }
    }
}