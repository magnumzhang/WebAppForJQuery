<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>


    <script src="Dynamic/DynamicCreateControl.js"></script>
    <script src="Dynamic/DynamicGetControlValue.js"></script>
    <script src="Dynamic/CallServerMethod.js"></script>

    <script>
       

        function ajax_single_data_call_back_method(data)
        {
            alert(data);
        }

        function ajax_json_data_call_back_method(jsonObj)
        {
            alert(jsonObj.classid);
        }

        $(document).ready(function () {

         

            //$.ajax({
            //    type: "Post",
            //    url: "WebForm3.aspx/GetControlData",
            //    data: "{'para1':1000,'para2':2000}",
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (data) {
            //        var control_info_str = "";

            //        //返回的数据用data.d获取内容      
            //        var JsonObj = $.parseJSON(data.d);

            //        $.each(JsonObj, function () {

            //            var control_type = this.MyType;

            //            if (control_type == "myInput") {
            //                create_myInput($("#myTable"), this);
            //            }
            //            else if (control_type == "myRadio") {
            //                create_myRadio($("#myTable"), this);
            //            }
            //            else if (control_type == "myCheckbox") {
            //                create_myCheckbox($("#myTable"), this);
            //            }
            //            else if (control_type == "myProgressbar") {
            //                create_progressbar($("#myTable"), this);
            //            }

            //            control_info_str += this.ID + "_" + control_type + ";";
            //        });

            //        $("#myTable").trigger("create");

            //        control_info_str = control_info_str.substring(0, control_info_str.length - 1);

            //        $("#control_info").val(control_info_str);



            //        //alert(control_id_builder);
            //    },
            //    error: function (err) {
            //        alert(err);
            //    }
            //});

            $("#btnSubmit").click(function () {
                //get_control_value();

                //function(e){curClick('id3')

                CallMethodToGetSingleData("para", "1234aaa", "WebForm3.aspx", "Test", ajax_single_data_call_back_method);

                CallMethodToGetJsonObj("para", "1234aaa", "WebForm3.aspx", "Test", ajax_json_data_call_back_method)
               

            });


        });

      

        function get_control_value() {
            var control_info_str = $("#control_info").val();
            var control_info_array = control_info_str.split(";");

            var control_result_array = new Array();
            var array_index = 0;

            $.each(control_info_array, function () {

                var control_data = this.split("_");
                var control_id = control_data[0];
                var control_type = control_data[1];
                var control_result;

                if (control_type == "myInput") {
                    control_result = get_myInputValue(control_id);
                }
                else if (control_type == "myRadio") {
                    control_result = get_myRadionValue(control_id);
                }
                else if (control_type == "myCheckbox") {
                    control_result = get_myCheckboxValue(control_id);
                }
                else if (control_type == "myProgressbar") {
                    control_result = get_myProgressbarValue(control_id);
                }

                //
                control_result_array[array_index] = get_ResultObject(control_id, control_result);
                array_index++;
            });

            var JsonDataStr = JSON.stringify(control_result_array);

            CallServerMethod("JsonStr", JsonDataStr, "WebForm3.aspx", "GetControlResult");

        }

        //function SendResultToServer(result_array) {
        //    var JsonDataStr = JSON.stringify(result_array);

        //    $.ajax({
        //        type: "Post",
        //        url: "WebForm3.aspx/GetControlResult",
        //        //如果传入的数据是字符串，需要加上单引号
        //        data: "{'JsonStr':" + " '" + JsonDataStr + "' " + "}",
        //        contentType: "application/json; charset=utf-8",
        //        dataType: "json",
        //        success: function (data) {
        //            //返回的数据用data.d获取内容      
        //            var JsonObj = $.parseJSON(data.d);

        //            JsonHandler(JsonObj);
        //        },
        //        error: function (err) {
        //            alert(err);
        //        }
        //    });
        //}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div data-role="page">
            <div data-role="header">
                <h1>header</h1>
            </div>

            <div data-role="main" class="ui-content" id="root">
                <table id="myTable" style="background-color: burlywood; width: 100%">
                </table>


                <input id="defult" />
            </div>

            <div data-role="footer">
                <h1>底部文本 footer</h1>
                <table>
                    <tr>
                        <td>
                            <input type="text" id="control_info" />
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <button id="btnSubmit" type="button">Submit</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
