<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallFunWithoutPara.aspx.cs" Inherits="WebApplication1.DemoFolder.CallFunWithoutPara" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        //文档就绪事件
        $(document).ready(function () {
            //在这里开始你的代码

            //为ID为g1的元素绑定click事件
            $("#g1").bind("click", my_click_event);

            //
        });

        function my_click_event() {
            $.ajax({
                type: "Post",
                url: "CallFunWithoutPara.aspx/GetFunResult",
                //此处调用的方法不传入参数，所以注释掉data部分
                //data:"{'para1':a,'para2':200}",
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
