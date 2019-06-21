<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextInput.aspx.cs" Inherits="WebApplication1.JQueryMobile.UI.TextInput" %>

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
        <div data-role="page">
            <div data-role="header">
                <h1>input控件的使用</h1>
            </div>

            <div data-role="main" class="ui-content">

                <div>
                    <label for="fname1">姓名:</label>
                    <input type="text" name="fname1" id="fname1" data-inline="true" />
                </div>

                <div>
                    <!--以下的label设定class属性后被隐藏了-->
                    <label for="fname2" class="ui-hidden-accessible">姓名:</label>
                    <input type="text" name="fname2" id="fname2" placeholder="请输入您的姓名..." />
                </div>

                <div>
                    <label for="fname1">姓名:</label>
                    <input type="text" name="fname3" id="fname3" data-clear-btn="true" />
                </div>

                <div>
                    <input type="text" name="fname4" id="fname4" placeholder="请输入您的姓名..." data-clear-btn="true" />
                </div>

                <div>
                    <label for="info">附加信息:(这是一个多行文本框，尝试录入多行文本，回车看看效果)</label>
                    <textarea name="addinfo" id="info"></textarea>
                </div>
            </div>
        </div>

        
    </form>
</body>
</html>
