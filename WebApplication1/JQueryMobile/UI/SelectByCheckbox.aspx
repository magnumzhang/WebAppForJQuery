<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectByCheckbox.aspx.cs" Inherits="WebApplication1.JQueryMobile.UI.SelectByCheckbox" %>

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
                <h1>单选按钮</h1>
            </div>

            <div data-role="main" class="ui-content">
                <fieldset data-role="controlgroup">
                    <legend>请选择您喜爱的颜色：</legend>
                    <label for="red">红色</label>
                    <input type="checkbox" name="favcolor" id="red" value="red" />
                    <label for="green">绿色</label>
                    <input type="checkbox" name="favcolor" id="green" value="green" />
                    <label for="blue">蓝色</label>
                    <input type="checkbox" name="favcolor" id="blue" value="blue" />
                </fieldset>
            </div>

        </div>
    </form>
</body>
</html>
