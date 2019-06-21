<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="WebApplication1.JQueryMobile.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
    <!--
        最简单的JQueryMobile页面结构，甚至于其中的form都是可以不需要的。
        -->
<body>
    <form id="form1" runat="server">
        <div data-role="page">
            <div data-role="header">
                <h1>欢迎来到我的主页 header</h1>
            </div>

            <div data-role="main" class="ui-content">
                <p>我现在是一个移动端开发者!! main-ui-content</p>
            </div>

            <div data-role="footer">
                <h1>底部文本 footer</h1>
            </div>
        </div>
    </form>
</body>
</html>
