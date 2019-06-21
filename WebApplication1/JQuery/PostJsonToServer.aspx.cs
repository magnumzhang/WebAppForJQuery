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
    [Serializable]
    public class JSonClassType
    {
        public int classid { get; set; }
        public string name { get; set; }
        public string zlclass { get; set; }
        public string pname { get; set; }
        public string tel { get; set; }
    }

    public partial class PostJsonToServer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string PostJson(string JsonStr)
        {
            //只有引入Newtonsoft.Json名称空间后，才能使用下面的反序列化方法。
            JSonClassType obj = JsonConvert.DeserializeObject<JSonClassType>(JsonStr);


            return "server got it";
        }
    }
}