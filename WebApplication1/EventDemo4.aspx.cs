using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

//右键项目=>Nuget包管理=>添加  Newtonsoft.Json
using Newtonsoft.Json;

namespace WebApplication1
{
    public partial class EventDemo4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetStr()
        {
            //只有引入Newtonsoft.Json名称空间后，才能使用下面的反序列化方法。
            RequestDataJSON obj = new RequestDataJSON();
            obj.classid = 100;
            obj.name = "name2";
            obj.pname = "people2";
            obj.zlclass = "MNB";
            obj.tel = "1998734";

            string str = JsonConvert.SerializeObject(obj);

            return str;
        }
    }
}