using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace Topic_10
{
    /// <summary>
    /// logout 的摘要描述
    /// </summary>
    public class logout : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            if (context.Session["login"] == "true" && context.Session["username"] != null)
            {
                context.Session.Clear();
                context.Session.Abandon();
                context.Response.Redirect("T_index.aspx");  //跳轉首頁
            }
            else
            {
                context.Response.Redirect("T_login.aspx");  //跳轉登入頁
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}