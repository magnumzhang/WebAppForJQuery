<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventDemo2.aspx.cs" Inherits="WebApplication1.EventDemo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--<link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />--%>
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script>
        //文档就绪事件
        $(function () {

            //在这里开始你的代码

            //为ID为g1的元素绑定click事件
            $("#result").bind("click", label_click_event);

        });


        

        function label_click_event() {
          
            var data1 = $("#data1").val();
            var data2 = $("#data2").val();

            

            var data_string = "";
            data_string += "{";
            data_string += " 'para1': " + data1 + ",";
            data_string += " 'para2': " + data2;
            data_string += "}";

            $.ajax({
                type: "Post",
                url: "EventDemo2.aspx/AddData",
                //方法传参的写法一定要对，其中para1与para2是方法定义的参数的名称      
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
    <style type="text/css">
        .v {
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="v">
            <input type="text" id="data1" />
        </div>
        <div class="v">+</div>
        <div class="v">
            <input type="text" id="data2" />
        </div>
        <div class="v">=</div>
        <div class="v">
            <label id="result">Get Result</label>
        </div>
       
    </form>
</body>
</html>
