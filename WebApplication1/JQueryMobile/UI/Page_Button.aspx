<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page_Button.aspx.cs" Inherits="WebApplication1.JQueryMobile.Page_Button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

</head>
     
<body>
    <form id="form1" runat="server">
        <!--
        普通按钮可以通过以下3中方式实现。
        推荐您使用带有 data-role="button" 的 <a> 元素在页面间进行链接，使用 <input> 或 <button> 元素进行表单提交。
        普通按钮一个按钮会占满一行
        -->
        <div>
            <button>按钮-button</button>
            <input type="button" value="按钮-input" />
            <a href="#" data-role="button">按钮 a</a>
        </div>
        <!--
        内联按钮:宽度将会根据文本的宽度而来。
        -->
        <div>
            <a href="#pagetwo" data-role="button" data-inline="true">inline button</a>
        </div>
        <!--水平组合按钮:-->
        <div data-role="controlgroup" data-type="horizontal">
            <a href="#anylink" data-role="button">按钮 1</a>
            <a href="#anylink" data-role="button">按钮 2</a>
            <a href="#anylink" data-role="button">按钮 3</a>
        </div>
        <!--垂直组合按钮:-->
        <div data-role="controlgroup" data-type="vertical" style="width:200px">
            <a href="#anylink" data-role="button" >按钮 A</a>
            <a href="#anylink" data-role="button" >按钮 B</a>
            <a href="#anylink" data-role="button" >按钮 C</a>
        </div>
        <!--后退按钮:
            -->
        <div>
            <a href="#" data-role="button" data-rel="back" data-inline="true">返回</a>
        </div>
    </form>
</body>
</html>
