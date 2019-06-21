<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetQueryString.aspx.cs" Inherits="WebApplication1.JQueryMobile.GetQueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script>
        $(document).ready(function () {
            //通过下面这样传值过来的页面，通过以下方式获取查询字符串。
            //Response.Redirect("GetQueryString.aspx?para1=100&para2=Hello");

            var p1 = GetQueryString("para1");
            var p2 = GetQueryString("para2");

            $("#data").val(p1+"#"+p2);
          
        });

        //js获取查询字符串的值
        function GetQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text"  id="data" />
    </div>
    </form>
</body>
</html>
