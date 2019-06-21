using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

//右键项目=>Nuget包管理=>添加  Newtonsoft.Json
using Newtonsoft.Json;

namespace WebApplication1.DemoFolder
{
    public partial class PostJsonThenGetItChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string PostJson(string JsonStr)
        {
            //只有引入Newtonsoft.Json名称空间后，才能使用下面的反序列化方法。
            JSonClassType obj = JsonConvert.DeserializeObject<JSonClassType>(JsonStr);

            obj.classid = 1000;
            obj.name = "CK";
            obj.zlclass = "unknown";
            obj.pname = "P";
            obj.tel = "100009";

            JsonStr = JsonConvert.SerializeObject(obj);
            return JsonStr;
        }
    }
}