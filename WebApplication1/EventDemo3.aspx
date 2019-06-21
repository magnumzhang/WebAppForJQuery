<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventDemo3.aspx.cs" Inherits="WebApplication1.EventDemo3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script>
        //文档就绪事件
        $(function () {

            //在这里开始你的代码

            //为ID为g1的元素绑定click事件
            $("#g1").bind("click", p_click_event);

        });

        function GetJsonData() {
            var classid = 2;
            var name = "name1";
            var zlclass = "测试类型1,测试类型2,测试类型3";
            var pname = "people1";
            var tel = "18900087";

            var json = {
                "classid": classid,
                "name": name,
                "zlclass": zlclass,
                "pname": pname,
                "tel": tel
            };
            return json;
        }

        function p_click_event() {
            var JsonDataStr = JSON.stringify(GetJsonData());

            $.ajax({
                type: "Post",
                url: "EventDemo3.aspx/GetStr",
                //如果传入的数据是字符串，需要加上单引号

                data: "{'para1':" + " '" + JsonDataStr + "' " + "}", 
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    //返回的数据用data.d获取内容      
                    alert(data.d);
                },
                error: function (err) {
                    alert(err);
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p id="g1">点击我将触发click事件</p>
    </div>
    </form>
</body>
</html>
