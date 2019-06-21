<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormBase.aspx.cs" Inherits="WebApplication1.JQueryMobile.FormBase" %>

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
    <form id="form1" method="post" action="FormBase.aspx">
    <div>
    <label for="fname">姓名：</label>
      <input type="text" name="fname" id="fname" />
      <input type="submit" data-inline="true" value="提交" />
    </div>
    </form>
</body>
</html>
