<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchByText.aspx.cs" Inherits="WebApplication1.JQueryMobile.UI.SearchByText" %>

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
            <h2>我的通讯录</h2>
            <input id="myFilter" data-type="search" />
            <!--
                data-autodividers="true"将根据Item的排列顺序，自动提取出首字母作为一个分组，
                注意如果相同首字母的Item没有连续的排在一起，则不会归并到一起，而是会产生两个相同的分组。
                这里搜索的时候，只是根据文本。
                -->
            <ul data-role="listview" data-filter="true" data-input="#myFilter" data-autodividers="true" data-inset="true">
                <li><a href="#">苏州市平江区</a></li>
                <li><a href="#">苏州市沧浪区</a></li>
                <li><a href="#">Adele</a></li>
                <li><a href="#">Agnes</a></li>
                <li><a href="#">Albert</a></li>
                <li><a href="#">Billy</a></li>
                <li><a href="#">Bob</a></li>
                <li><a href="#">Calvin</a></li>
                <li><a href="#">Cameron</a></li>
                <li><a href="#">Chloe</a></li>
                <li><a href="#">Christina</a></li>
                <li><a href="#">Diana</a></li>
                <li><a href="#">Gabriel</a></li>
                <li><a href="#">Glen</a></li>
                <li><a href="#">Ralph</a></li>
                <li><a href="#">Valarie</a></li>
            </ul>
        </div>

    </div>
</body>
</html>
