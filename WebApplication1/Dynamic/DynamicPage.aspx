<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicPage.aspx.cs" Inherits="WebApplication1.Dynamic.DynamicPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

    <!--以下自定义js主要用来动态创建控件，获取动态创建控件的值，调用web page服务器端代码。-->
    <script src="DynamicCreateControl.js"></script>
    <script src="DynamicGetControlValue.js"></script>
    <script src="CallServerMethod.js"></script>

    <script>
        /*
            以下两个为返回单个字符串数据以及Json对象的示例方法，在通过AJAX调用服务器端程序后，可以通过传入以下的方法名，来处理AJAX返回的结果。
            所有AJAX调用的方法，如果要在$(document).ready中使用，必须在其之前定义，否则将不能正常执行。
        */
        function ajax_single_data_call_back_method(singleData) {
            alert(singleData);
        }

        function ajax_json_data_call_back_method(jsonObj) {
            alert(jsonObj.classid);
        }

        function create_control(jsonObj) {

            var control_info_builder = "";
            var control_container = $("#myTable");
            var control_info = $("#control_info");

            //调用初始化控件的方法，获取的是一个List<DynamicControl>的列表。
            $.each(jsonObj, function () {

                var control_type = this.MyType;
                var control_id = this.ID;

                switch (control_type) {
                    case "myInput":
                        create_myInput(control_container, this);
                        break;
                    case "myRadio":
                        create_myRadio(control_container, this);
                        break;
                    case "myCheckbox":
                        create_myCheckbox(control_container, this);
                        break;
                    case "myProgressbar":
                        create_progressbar(control_container, this);
                        break;
                }

                //当控件成功创建以后，会将该控件的ID与类型的信息以"_"为分割保存起来。
                control_info_builder += control_id + "_" + control_type + ";";
            });

            //去除控件信息字符串最后的";"
            control_info_builder = control_info_builder.substring(0, control_info_builder.length - 1);

            //将控件信息保存到文本控件中。
            control_info.val(control_info_builder);

            //重绘容器，以使得其应用JQuery的样式。
            control_container.trigger("create");
        }

        function after_get_control_result(result_message) {
            alert(result_message);
        }

        function get_control_result() {
            //control_info保存的是所有控件的ID与类型的信息，格式为ID1_TYPE1;ID2_TYPE2
            var control_info = $("#control_info").val();

            //将字符串分割为数组，每个数组元素，即为一个控件的信息，格式为ID1_TYPE1
            var control_info_array = control_info.split(";");

            var control_result_array = new Array();
            var array_index = 0;


            $.each(control_info_array, function () {

                var single_control_info_array = this.split("_");
                var control_id = single_control_info_array[0];
                var control_type = single_control_info_array[1];
                var control_result;

                switch (control_type) {
                    case "myInput":
                        control_result = get_myInputValue(control_id);
                        break;
                    case "myRadio":
                        control_result = get_myRadionValue(control_id);
                        break;
                    case "myCheckbox":
                        control_result = get_myCheckboxValue(control_id);
                        break;
                    case "myProgressbar":
                        control_result = get_myProgressbarValue(control_id);
                        break;
                }
               
                //将控件ID与控件结果封装成JSON对象，保存到数组中。
                control_result_array[array_index] = get_ResultObject(control_id, control_type,control_result);
                array_index++;
            });

            var JsonDataStr = JSON.stringify(control_result_array);

            CallMethodToGetSingleData("JsonStr", JsonDataStr, "DynamicPage.aspx", "HandleControlResult", after_get_control_result);
        }

        function submit_event() {
           
            get_control_result();
        }

        $(document).ready(function () {

            CallMethodToGetJsonObj("para", "this_is_a_para_val", "DynamicPage.aspx", "GetControl", create_control);

            $("#btnSubmit").bind("click", submit_event);
        });

        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div data-role="page">
            <div data-role="header">
                <h1>JQuery动态创建控件，获取控件值，服务器端交互</h1>
            </div>

            <div data-role="main" class="ui-content" id="root">
                <table id="myTable" style="background-color: burlywood; width: 100%">
                    <!--所有动态创建的控件，都将添加到该table中-->
                </table>
            </div>

            <div data-role="footer">
                <h1>底部文本 footer</h1>
                <!--动态创建的控件的ID，将保存到control_info控件中，
                    对于其中的每一个动态产生的控件，都将保存控件ID与控件类型MyType两个比较数据。
                    -->
                <input type="text" id="control_info" />
                <button id="btnSubmit" type="button">Submit</button>
            </div>
        </div>
    </form>
</body>
</html>
