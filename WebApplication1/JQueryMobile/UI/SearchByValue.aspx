<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchByValue.aspx.cs" Inherits="WebApplication1.JQueryMobile.UI.SearchByValue" %>

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
    <div data-role="page">
        <div data-role="header">
            <h1>简单文本搜索</h1>
        </div>

        <div data-role="main" class="ui-content">
            <h2>苏州区域</h2>
            <input id="myFilter" data-type="search" />
            <!--
               data-filtertext指定了搜索的文本内容，当输入框录入内容后，将根据输入框的内容，对data-filtertext进行模糊匹配。
                -->
            <ul data-role="listview" data-filter="true" data-input="#myFilter" data-autodividers="true" data-inset="true">
                <li data-filtertext="suzhouPing"><a href="#">苏州市平江区</a></li>
                <li data-filtertext="suzhouCang"><a href="#">苏州市沧浪区</a></li>
                <li data-filtertext="suzhouGong"><a href="#">苏州市工业园区</a></li>
                <li data-filtertext="suzhouXin"><a href="#">苏州市新区</a></li>
            </ul>
        </div>

    </div>
</body>
</html>
