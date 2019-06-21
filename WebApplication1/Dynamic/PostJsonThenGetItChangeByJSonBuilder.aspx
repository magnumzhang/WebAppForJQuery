<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostJsonThenGetItChangeByJSonBuilder.aspx.cs" Inherits="WebApplication1.Dynamic.PostJsonThenGetItChangeByJSonBuilder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>

    <script src="CallServerMethod.js"></script>
    <script src="JSonBuilder.js"></script>
    <script>
        $(document).ready(function () {

            //<1>调用Server方法接收Server弱类型JSon字符串数据。
            CallMethodToGetJsonObj("para", "", "PostJsonThenGetItChangeByJSonBuilder.aspx", "PostJSonDataToClient", target_event_a);

            //<2>将Client端的数据，拼接成弱类型的JSon字符串，发送到Server，交由Server处理。
            var JBuilder = new JSonStringBuilder();
            JBuilder.Begin();
            JBuilder.Add("test_result", "PASS");
            JBuilder.Add("test_value1", 200);
            JBuilder.End();

            var JSonStr = JBuilder.toString();

            CallMethodToGetJsonObj("JSonStr", JSonStr, "PostJsonThenGetItChangeByJSonBuilder.aspx", "ProcessClientJSonData", target_event_b);
   
        });

        function target_event_a(JSonObj)
        {
            alert(JSonObj.my_name + "/" + JSonObj.my_age + "/" + JSonObj.my_address);
        }

        function target_event_b()
        {

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
