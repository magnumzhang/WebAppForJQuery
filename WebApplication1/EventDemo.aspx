<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventDemo.aspx.cs" Inherits="WebApplication1.EventDemo" %>

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
            $("#g1").bind("click", my_event);

            //
        });

        function my_event()
        {
            var result = $('input[name="gender"]:checked').val();
            alert(result);

            //$('input[name="testradio"]:checked').val();
            //$('input:radio:checked').val();
            //$('input[@name="testradio"][checked]');
            //$('input[name="testradio"]').filter(':checked');

        }

        function p_click_event() {
            var str = "";

            $.ajax({
                type: "Post",
                url: "EventDemo.aspx/GetData",
                //此处调用的方法不传入参数
                //方法传参的写法一定要对，其中para1与para2是方法定义的参数的名称      
                //data: data_string,//"{'para1':a,'para2':200}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    //返回的数据用data.d获取内容      
                    //alert(data.d);

                    $(data.d).each(function () {
                        str += this;

                        //$("#list").append("<li>" + this + "</li>");
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
           

             <div data-role="main" class="ui-content">
                <fieldset data-role="controlgroup">
                    <legend>请选择您的性别：</legend>
                    <label for="male">男性</label>
                    <input type="radio" name="gender" id="male" value="male" />
                    <label for="female">女性</label>
                    <input type="radio" name="gender" id="female" value="female" />
                </fieldset>
            </div>
        </div>
    </form>
</body>
</html>
