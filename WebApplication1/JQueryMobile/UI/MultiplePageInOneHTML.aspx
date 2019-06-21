<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiplePageInOneHTML.aspx.cs" Inherits="WebApplication1.JQueryMobile.MultiplePageInOneHTML" %>

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
        JQueryMobile可以在一个HTML页面中放置多个类似于page的页面，
        第一个div中的页面，是页面加载时显示的页面，

        -->
<body>
    <form id="form1" runat="server">
        <div data-role="page" id="pageone">
            <div data-role="main" class="ui-content">
                <a href="#pagetwo">跳转到第二个页面 BBB</a>
            </div>
        </div>

        <div data-role="page" id="pagetwo">
            <div data-role="main" class="ui-content">
                <a href="#pageone">跳转到第一个页面 AAA</a>
            </div>
        </div>
   
    </form>
</body>
</html>
