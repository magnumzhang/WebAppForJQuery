using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;


namespace WebApplication1.Dynamic
{
    //此处前后台转递的是通过强类型的可序列化类来完成的。

    //用户类，用于在前台与后台之间传递数据。
    //注意:
    //<1>由于需要进行json的序列化，所以类必须标识为可序列化的。
    //<2>类的字段不能用成员，而必须提供具有get set的属性，否则赋值将无效。
    [Serializable]
    public class Sys_User
    {
        public string UserName { get; set; }
        public string Password { get; set; }
    }

    [Serializable]
    public class Result
    {
        public bool ResultValue { get; set; }
        public string ResultMessage { get; set; }
    }

    

    public partial class StronglyTypedCallServerMethod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static string GetCurrentUserInfo(string para)
        {
            //此处返回当前登录的用户信息。
            Sys_User CurrentUser = new Sys_User();
            CurrentUser.UserName = "test";
            CurrentUser.Password = "0000";

            return JSonUtility.GetSerializedJSonStr(CurrentUser);
        }

        [WebMethod]
        public static string ChangeNewPassword(string NewPassword)
        {
            Result R = new Result();
            R.ResultValue = true;
            R.ResultMessage = "success";


            return JSonUtility.GetSerializedJSonStr(R);
        }
    }
}