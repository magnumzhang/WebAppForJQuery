using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Text;

namespace WebApplication1.Dynamic
{
    public class JSonUtility
    {
        //将JSon对象序列化为JSon字符串。
        public static string GetSerializedJSonStr(object obj)
        {
            string JSonStr = JsonConvert.SerializeObject(obj);
            return JSonStr;
        }

        public static Dictionary<string, string> GetJSonDic(string JSonStr)
        {
            JObject JSonData = (JObject)JsonConvert.DeserializeObject(JSonStr);

            Dictionary<string, string> JSonDataDic = new Dictionary<string, string>();

            foreach (KeyValuePair<string, JToken> JT in JSonData)
            {
                JSonDataDic.Add(JT.Key, Convert.ToString(JT.Value));
            }

            return JSonDataDic;
        }
    }

    public class JSonStringBuilder
    {
        private StringBuilder builder;

        public JSonStringBuilder()
        {
            builder = new StringBuilder();
        }

        public void Begin()
        {
            builder.Append("{");
        }

        public void End()
        {
            builder.Remove(builder.Length - 1, 1);
            builder.Append("}");
        }

        public void Add(string key, object data)
        {
            if (data.GetType() == typeof(String))
            {
                builder.AppendFormat("\"{0}\":\"{1}\",", key, data);
            }
            else
            {
                builder.AppendFormat("\"{0}\":{1},", key, data);
            }
        }

        public override string ToString()
        {
            string str = builder.ToString();
            return str;
        }
    }
}