<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StronglyTypedCallServerMethod.aspx.cs" Inherits="WebApplication1.Dynamic.StronglyTypedCallServerMethod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

    <script src="CallServerMethod.js"></script>
    <script>
        var global_old_password;

        function GetCurrentUserInfo(JSonObj) {
            //将当前用户的老密码保存到全局js变量中，以便在更改密码时，验证老密码是否正确。
            global_old_password = JSonObj.Password;
        }

        $(document).ready(function () {
            //获取当前用户的信息。
            CallMethodToGetJsonObj("para", "", "StronglyTypedCallServerMethod.aspx", "GetCurrentUserInfo", GetCurrentUserInfo);

            $('#divmsg').css('display', 'none');

            $("#txtOldPassword").focus();

        });

        function after_password_changed_event(JSonObj)
        {
          
            if (JSonObj.ResultValue)
            {
                $("#msg_body").html("密码更改成功。");
                $('#divmsg').css('display', '');
            }
            else
            {
                $("#msg_body").html("密码更改失败:" + JSonObj.ResultMessage);
                $('#divmsg').css('display', '');
            }
        }

        function submit_event()
        {
            var old_psw = $("#txtOldPassword").val();
            var new_psw1 = $("#txtNewPassword").val();
            var new_psw2 = $("#txtNewPassword2").val();

            if (old_psw != global_old_password) {
                $("#msg_body").html("旧密码错误。");
                $('#divmsg').css('display', '');
                return;
            }

            if (new_psw1.trim().length == 0) {
                $("#msg_body").html("密码不能为空。");
                $('#divmsg').css('display', '');
                return;
            }

            if (old_psw == new_psw1) {
                $("#msg_body").html("新密码不能与旧密码相同。");
                $('#divmsg').css('display', '');
                return;
            }

            if (new_psw1 != new_psw2) {
                $("#msg_body").html("新密码两次不相同。");
                $('#divmsg').css('display', '');
                return;
            }

            CallMethodToGetJsonObj("NewPassword", new_psw1, "StronglyTypedCallServerMethod.aspx", "ChangeNewPassword", after_password_changed_event);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row text-center">
                    <h3>change password demo</h3>
                </div>
                <div class="row">
                    <div class="col-md-2 text-right">
                        <label class="control-label">旧密码:</label>
                    </div>
                    <div class="col-md-3" style="vertical-align: middle">
                        <input type="password" class="form-control" id="txtOldPassword" placeholder="Old Password" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2 text-right">
                        <label class="control-label">新密码:</label>
                    </div>

                    <div class="col-md-3">
                        <input type="password" class="form-control" id="txtNewPassword" placeholder="New Password" />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2 text-right">
                        <label class="control-label">确认新密码:</label>
                    </div>

                    <div class="col-md-3">
                        <input type="password" class="form-control" id="txtNewPassword2" placeholder="Confirm Password" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-3 text-right">
                        <button type="button" class="btn btn-default" onclick="submit_event()">提交</button>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-3">
                        <div id="divmsg" class="alert alert-info alert-dismissible">

                            <span id="msg_body"></span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
