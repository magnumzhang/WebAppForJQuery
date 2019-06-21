using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

//右键项目=>Nuget包管理=>添加  Newtonsoft.Json
using Newtonsoft.Json;

namespace WebApplication1.Dynamic
{
    public partial class DynamicPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetControl(string para)
        {
            List<DynamicControl> ControlList = new List<DynamicControl>();

            myInput input1 = new myInput();
            input1.DisplayText = "k001";
            ControlList.Add(input1);

            myInput input2 = new myInput();
            input2.DisplayText = "k002";
            input2.InputValue = "1000K";
            ControlList.Add(input2);

            myInput input3= new myInput();
            input3.DisplayText = "p003";
            input3.InputValue = "333";
            ControlList.Add(input3);

            myRadio radio1 = new myRadio();
            radio1.GroupName = "group1";
            radio1.DisplayText = "r001";
            radio1.ItemList.Add(new myItem("male", "1"));
            radio1.ItemList.Add(new myItem("female", "0"));
            ControlList.Add(radio1);

            myCheckbox checkbox1 = new myCheckbox();
            checkbox1.GroupName = "group2";
            checkbox1.DisplayText = "cb001";
            checkbox1.ItemList.Add(new myItem("red", "R"));
            checkbox1.ItemList.Add(new myItem("yellow", "Y"));
            checkbox1.ItemList.Add(new myItem("blue", "B"));
            ControlList.Add(checkbox1);

            myProgressbar progressbar1 = new myProgressbar();
            progressbar1.DisplayText = "完成率";
            progressbar1.Min = 0;
            progressbar1.Max = 100;
            progressbar1.Current = 20;
            ControlList.Add(progressbar1);

            string JsonStr = JsonConvert.SerializeObject(ControlList);
            return JsonStr;

        }

        [WebMethod]
        public static string HandleControlResult(string JsonStr)
        {
            List<myControlResult> ResultList = JsonConvert.DeserializeObject<List<myControlResult>>(JsonStr);

            foreach (myControlResult result in ResultList)
            {
                System.Diagnostics.Debug.WriteLine(String.Format("ControlID:{0} ControlType:{1} ControlData:{2}", result.ID, result.Type, result.Data));
            }

            return "SUCCESS";
        }
    }
}