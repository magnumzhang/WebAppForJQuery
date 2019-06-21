/*
paraName:参数名称,string
paraValueStr:参数值,string
action_page:后台响应页面,可以是ASP,PHP,ASPX等,string
action_method:后台相应页面方法,string
client_call_back_method:执行该方法后的回调函数(回调函数便于在执行AJAX后处理AJAX的返回值),string
返回值:Json对象。
*/
function CallMethodToGetJsonObj(paraName, paraValueStr, action_page, action_method, client_call_back_method) {

    $.ajax({
        type: "Post",
        //url: "WebForm3.aspx/GetControlResult",
        url: action_page + "/" + action_method,
        //如果传入的数据是字符串，需要加上单引号
        //data: "{'JsonStr':" + " '" + JsonDataStr + "' " + "}",
        data: "{'" + paraName + "':" + " '" + paraValueStr + "' " + "}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            //返回的数据用data.d获取内容      
            var JsonObj = $.parseJSON(data.d);
            client_call_back_method(JsonObj);
        },
        error: function (err) {
            alert(err);
        }
    });

}


/*
paraName:参数名称,string
paraValueStr:参数值,string
action_page:后台响应页面,可以是ASP,PHP,ASPX等,string
action_method:后台相应页面方法,string
client_call_back_method:执行该方法后的回调函数(回调函数便于在执行AJAX后处理AJAX的返回值),string
返回值:单个任意类型的数据。
*/
function CallMethodToGetSingleData(paraName, paraValueStr, action_page, action_method, client_call_back_method)
{
    $.ajax({
        type: "Post",
        url: action_page + "/" + action_method,
        data: "{'" + paraName + "':" + " '" + paraValueStr + "' " + "}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            //返回的数据用data.d获取内容      
            client_call_back_method(data.d);
        },
        error: function (err) {
            alert(err);
        }
    });
}
