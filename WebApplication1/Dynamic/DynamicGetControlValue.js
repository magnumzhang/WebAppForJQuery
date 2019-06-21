function get_myInputValue(control_id) {
    var data = $("#" + control_id).val();
    return data;
}

function get_myRadionValue(control_id) {
    var group_name = $("#" + control_id).attr("name")
    var data = $("input[name='" + group_name + "']:checked").val();
    return data;
}

function get_myCheckboxValue(control_id) {
    var group_name = $("#" + control_id).attr("name")
    var data = "";

    $.each($("input[name='" + group_name + "']:checked"), function () {
        data += $(this).val() + ",";
    });

    data = data.substring(0, data.length - 1);

    return data;
}

function get_myProgressbarValue(control_id) {
    var data = $("#" + control_id).val();
    return data;
}

function get_ResultObject(id, type, data) {
    var json = {
        "ID": id,
        "TYPE": type,
        "Data": data
    };

    return json;
}

