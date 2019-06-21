<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallFunGetArrayResult.aspx.cs" Inherits="WebApplication1.DemoFolder.CallFunGetArrayResult" %>

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
        $(document).ready(function () {
            //在这里开始你的代码

            //为ID为g1的元素绑定click事件
            $("#g1").bind("click", p_click_event);

            //
        });


        function p_click_event() {
            var str = "";

            $.ajax({
                type: "Post",
                url: "CallFunGetArrayResult.aspx/GetArrayData",
                data: "{'para1':1000,'para2':2000}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    //返回的数据用data.d获取内容      

                    $(data.d).each(function () {
                        str += this + ";";
                    });

                    alert(str);

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
