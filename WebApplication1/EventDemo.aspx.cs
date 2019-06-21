using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

namespace WebApplication1
{
    public partial class EventDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string SayHello()
        {
            return "Hello";
        }

        [WebMethod]
        public static List<string> GetData()
        {
            return new List<string>() { "a1", "b2", "c3" };
        }
    }
}