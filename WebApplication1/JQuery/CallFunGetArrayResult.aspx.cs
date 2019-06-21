using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

namespace WebApplication1.DemoFolder
{
    public partial class CallFunGetArrayResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<string> GetArrayData(int para1,int para2)
        {
            return new List<string>() { para1.ToString(), para2.ToString(), "a1", "b2", "c3" };
        }
    }
}