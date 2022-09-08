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
            if (Request.Form["login"] == "true")
                if (Request.Form["username"] != null)
                {
                    login_status.Text = Request.Form["username"];
                }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string name = Request.Form["username"];
            string password = Request.Form["userpasswd"];
            string sql_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(sql_data);

            string sqlI = $"SELECT  name, password FROM Customers WHERE (name = '{name}')";
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
                        Session["login"] = "true";
                        login_status.Text = Request.Form["username"];

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