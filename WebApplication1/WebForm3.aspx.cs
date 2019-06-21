using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;

//右键项目=>Nuget包管理=>添加  Newtonsoft.Json
using Newtonsoft.Json;

using WebApplication1.Dynamic;
using WebApplication1.DemoFolder;

namespace WebApplication1
{
   

    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        [WebMethod]
        public static string Test(string para)
        {
            JSonClassType obj = new JSonClassType();

            obj.classid = 1000;

         string   JsonStr = JsonConvert.SerializeObject(obj);
            return JsonStr;
        }

        [WebMethod]
        public static string GetControlData(string para1, string para2)
        {
            List<DynamicControl> ControlList = new List<DynamicControl>();

            myInput input1 = new myInput();
            //input1.ID = "con001";
            //input1.MyType = input1.GetType().Name;
            input1.DisplayText = "k001";
            ControlList.Add(input1);

            myInput input2 = new myInput();
            //input2.ID = "con002";
            //input2.MyType = input2.GetType().Name;
            input2.DisplayText = "k002";
            input2.InputValue = "1000K";
            ControlList.Add(input2);

            myRadio radio1 = new myRadio();
            //radio1.ID = "con003";
            //radio1.MyType = radio1.GetType().Name;
            radio1.GroupName = "group1";
            radio1.DisplayText = "r001";
            radio1.ItemList.Add(new myItem("male", "1"));
            radio1.ItemList.Add(new myItem( "female", "0"));
            ControlList.Add(radio1);

            myCheckbox checkbox1 = new myCheckbox();
            //checkbox1.ID = "con004";
            //checkbox1.MyType = checkbox1.GetType().Name;
            checkbox1.GroupName = "group2";
            checkbox1.DisplayText = "cb001";
            checkbox1.ItemList.Add(new myItem( "red", "R"));
            checkbox1.ItemList.Add(new myItem( "yellow", "Y"));
            checkbox1.ItemList.Add(new myItem( "blue", "B"));
            ControlList.Add(checkbox1);

            myProgressbar progressbar1 = new myProgressbar();
            //progressbar1.ID = "con005";
            //progressbar1.MyType = progressbar1.GetType().Name;
            progressbar1.DisplayText = "完成率";
            progressbar1.Min = 0;
            progressbar1.Max = 100;
            progressbar1.Current = 20;
            ControlList.Add(progressbar1);

            string JsonStr = JsonConvert.SerializeObject(ControlList);
            return JsonStr;

        }

        [WebMethod]
        public static string GetControlResult(string JsonStr)
        {
            List<myControlResult> ResultList = JsonConvert.DeserializeObject<List<myControlResult>>(JsonStr);

            foreach (myControlResult result in ResultList)
            {
                System.Diagnostics.Debug.WriteLine(result.ID + "/" + result.Data);
            }

            return ""; }
    }
}