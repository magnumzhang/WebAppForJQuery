<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallFunWithPara.aspx.cs" Inherits="WebApplication1.DemoFolder.CallFunWithPara" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        //文档就绪事件
        $(function () {
            //在这里开始你的代码

            //为ID为g1的元素绑定click事件
            $("#result").bind("click", my_click_event);

        });

        function my_click_event() {

            var data1 = $("#data1").val();
            var data2 = $("#data2").val();

            //参数名称必须与后台方法的参数名称一致。
            //如果参数值是字符串，数据必须包括在单引号中，如'string data'
            var data_string = "";
            data_string += "{";
            data_string += " 'para1': " + data1 + ",";
            data_string += " 'para2': " + data2;
            data_string += "}";

            $.ajax({
                type: "Post",
                url: "CallFunWithPara.aspx/AddData",
                data: data_string,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    //返回的数据用data.d获取内容      
                    $("#result").html(data.d);
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
        <table>
            <tr>
                <td><input type="text" id="data1" /></td>
                <td>+</td>
                <td><input type="text" id="data2" /></td>
                <td>=</td>
                <td><label id="result">Get Result</label></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
