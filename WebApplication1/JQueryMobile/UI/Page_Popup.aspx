<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page_Popup.aspx.cs" Inherits="WebApplication1.JQueryMobile.Page_Popup" %>

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
        只需要指定data-rel="popup"，即说明点击该按钮，会弹出一个对话框
        -->
<body>
    <form id="form1" runat="server">
    <div>
        <a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all">显示弹窗</a>

        <div data-role="popup" id="myPopup">
          <p>这是一个简单的弹窗</p>
        </div>
    </div>
    </form>
</body>
</html>
