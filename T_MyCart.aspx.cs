using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Topic_10
{
    public partial class T_MyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == "true" && Session["username"] != null)
            {
                Cart_status.Text = "Hello ! " + Session["username"].ToString() + Session["userID"].ToString();
                CartLink.Text = "<a href=\"cart.html\" class=\"view_cart\">購物車清單</a>";
            }
            else
                Cart_status.Text = "我的購物車";
            CartLink.Text = "";
        }
    }
}