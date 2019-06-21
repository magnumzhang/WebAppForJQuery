<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectByRadio.aspx.cs" Inherits="WebApplication1.JQueryMobile.UI.SelectByRadio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script>
        
        $(document).on("pagecreate", function () {
            $("#btnSubmit1").on("click", function () {
                
                var result = $('input[name="gender"]:checked').val();
                alert(result);
            });

            $("#btnSubmit2").on("click", function () {

                var result = $('input[name="gender"]:checked').val();
                alert(result);
            });

        });
        

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div data-role="page">
            <div data-role="header">
                <h1>单选按钮</h1>
            </div>

            <div data-role="main" class="ui-content">
                <fieldset data-role="controlgroup">
                    <legend>请选择您的性别：</legend>
                    <label for="male">男性</label>
                    <input type="radio" name="gender" id="male" value="male" />
                    <label for="female">女性</label>
                    <input type="radio" name="gender" id="female" value="female" />
                </fieldset>
            </div>
            <div>
                <!--不管是以下哪种按钮，都是需要设定标签的type为button，否则click事件只能被执行一次-->

                <!--input中的value指定的即为界面的显示文本-->
                <input type="button" value="Submit-1" id="btnSubmit1" />
              

                <button id="btnSubmit2" type="button">Submit-2</button>
            </div>
        </div>
    </form>
</body>
</html>
