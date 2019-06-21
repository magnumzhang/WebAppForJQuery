<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageInit.aspx.cs" Inherits="WebApplication1.JQueryMobile.Event.PageInit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script>
        //如下的页面初始化事件中指定了具体的页面ID，所以只针对该一个页面的初始化起作用。
        //$(document).on("pagecreate", "#pageone", function () {
        //    $("p").on("click", function () {
        //        $(this).hide();
        //    });
        //});


        //如下的页面初始化事件中没有指定具体的页面ID，则是针对所有的页面初始化都会起作用。
        $(document).on("pagecreate", function ()
        {
            $("p").on("click", function () {
                $(this).hide();
            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div data-role="page" id="mypage1">
            <div data-role="header">
                <h1>页面标题部分</h1>
            </div>

            <div data-role="main" class="ui-content">
                <p>如果您点击我，我会消失。</p>
                <p>点击我，我会消失。</p>
                <p>点击我，我也会消失。</p>
                <a href="#mypage2">go page2</a>
            </div>

            <div data-role="footer">
                <h1>页面底部部分</h1>
            </div>
        </div>

        <div data-role="page" id="mypage2">
            <div data-role="header">
                <h1>2页面标题部分</h1>
            </div>

            <div data-role="main" class="ui-content">
                <p>2如果您点击我，我会消失。</p>
                <p>2点击我，我会消失。</p>
                <p>2点击我，我也会消失。</p>
            </div>

            <div data-role="footer">
                <h1>2页面底部部分</h1>
            </div>
        </div>
    </form>
</body>
</html>
