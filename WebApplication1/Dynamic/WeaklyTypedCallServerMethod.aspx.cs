using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;
using Newtonsoft.Json;
using System.Text;

namespace WebApplication1.Dynamic
{
    public partial class WeaklyTypedCallServerMethod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetCurrentUserInfo(string para)
        {
            //此处返回当前登录的用户信息。
            //返回弱类型的JSon字符串。

            int flag = 1;

            if (flag == 1)
            {
                //<1>直接在程序中拼接JSon字符串。注意：在拼接时，对于字符串，value是需要加双引号的，而非字符类型的数据，则是不需要加双引号的。
                var CurrentUserJSonStr = "{ \"my_name\" : \"xiaojun\", \"my_password\" : \"9999\", \"my_age\" : 20 }";
                return CurrentUserJSonStr;
            }
            else
            {
                //<2>程序对Json的字符拼接进行封装，这样可以简化拼接时可能出现的错误。
                JSonStringBuilder JSonStrBuilder = new JSonStringBuilder();
                JSonStrBuilder.Begin();
                JSonStrBuilder.Add("my_name", "hello");
                JSonStrBuilder.Add("my_password", "8888");
                JSonStrBuilder.Add("my_age", 40);
                JSonStrBuilder.End();
                return JSonStrBuilder.ToString();
            }
        }

        [WebMethod]
        public static string ChangeNewPassword(string NewPassword)
        {
            JSonStringBuilder JSonStrBuilder = new JSonStringBuilder();
            JSonStrBuilder.Begin();
            JSonStrBuilder.Add("ResultValue", "true");
            JSonStrBuilder.Add("ResultMessage", "success");
            JSonStrBuilder.End();
            return JSonStrBuilder.ToString();
        }
    }
}