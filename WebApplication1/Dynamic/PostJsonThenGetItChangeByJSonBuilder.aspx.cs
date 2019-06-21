using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace WebApplication1.Dynamic
{
    /* Client-Server之间JSon数据传递。
     * HTML前端UI与传统Web Form之间JSon数据类型数据的传递。
     * <1>强类型。要求在后台cs文件中定义class，然后通过序列化的方式变成字符串，进行数据的传输，最终在前端以JSon对象的方式解析，后端则将字符串转换成class后，以强类型的对象进行访问。
     * <2>弱类型。弱类型的好处是，不需要定义class，直接以字符串的方式进行传递，解析的时候，将字符串以JSon对象的方式进行解析。
     */ 


    public partial class PostJsonThenGetItChangeByJSonBuilder : System.Web.UI.Page
    {
        //<1>
        //将Server端的数据，通过弱类型Json字符串的方式，发送到Client端。
        [WebMethod]
        public static string PostJSonDataToClient(string para)
        {
            JSonStringBuilder JBuilder = new JSonStringBuilder();
            JBuilder.Begin();
            JBuilder.Add("my_name", "Jack");
            JBuilder.Add("my_age", 40);
            JBuilder.Add("my_address", "Suzhou ISP");
            JBuilder.End();

            return JBuilder.ToString();
        }

        //<2>
        //解析Client端传过来的Json字符串。
        [WebMethod]
        public static void ProcessClientJSonData(string JSonStr)
        {
            Dictionary<string, string> dic = JSonUtility.GetJSonDic(JSonStr);
     
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            

           
            
        }
    }
}