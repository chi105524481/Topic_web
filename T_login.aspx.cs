using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Topic_10
{
    public partial class T_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["login"] == "true" && Session["username"] != null)
            {
                Response.Redirect("T_index.aspx");
                login_status.Text = Request.Form["username"];
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string name = Request.Form["username"];
            string password = Request.Form["userpasswd"];
            string sql_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString3"].ConnectionString;


            SqlConnection sqlconn = new SqlConnection(sql_data);

            string sqlI = $"SELECT  * FROM Customers WHERE (name = '{name}')";
            SqlCommand cmd = new SqlCommand(sqlI, sqlconn);
            sqlconn.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                if (reader.Read())
                {
                    if (password == reader["password"].ToString())
                    {
                        Session["username"] = name;
                        Session["userID"] = reader["id"].ToString();
                        Session["login"] = "true";
                        login_status.Text = Request.Form["username"];
                        Response.Redirect("T_index.aspx");
                    }
                    else
                        login_status.Text = "密碼錯誤";
                }
            }
            else
                login_status.Text = "帳號錯誤";
            sqlconn.Close();
        }


    }
}