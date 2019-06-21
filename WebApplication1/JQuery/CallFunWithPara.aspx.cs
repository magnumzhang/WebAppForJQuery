using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

namespace WebApplication1.DemoFolder
{
    public partial class CallFunWithPara : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static int AddData(int para1, int para2)
        {
            return para1 + para2;
        }
    }
}