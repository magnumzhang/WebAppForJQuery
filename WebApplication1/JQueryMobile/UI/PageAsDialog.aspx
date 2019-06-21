<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageAsDialog.aspx.cs" Inherits="WebApplication1.JQueryMobile.PageAsDialog" %>

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
        JQueryMobile可以将一个div设定为弹出对话框，只要添加data-dialog="true"属性，
        其显示结果类似于传统js的弹出页面。
        -->
<body>
    <form id="form1" runat="server">
        <div data-role="page" id="pageone">
            <div data-role="main" class="ui-content">
                <a href="#pagedialog">跳出页面对话框</a>
            </div>
        </div>

        <div data-role="page" data-dialog="true" id="pagedialog">
            <div data-role="main" class="ui-content">
                <table>
                    <tr>
                        <td>User Name:</td>
                        <td><input type="text" id="username" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="text" id="password" /></td>
                    </tr>
                    <tr>
                        <td><a href="#pageone">确定</a></td>
                        <td><a href="#pageone">返回</a></td>
                    </tr>
                </table>         
            </div>
        </div>
    </form>
</body>
</html>
