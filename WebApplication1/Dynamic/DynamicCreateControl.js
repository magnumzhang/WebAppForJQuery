
function create_myInput(myParentObj, control_obj) {
    var control_id = control_obj.ID;
    var control_display_text = control_obj.DisplayText
    var control_value = control_obj.InputValue;

    var my_label = $("<label for=\"" + control_id + "\"></label>").text(control_display_text);
    var my_input = $("<input type=\"text\" id=\"" + control_id + "\"/>").val(control_value);


    var my_cell = $("<td></td>");
    my_cell.append(my_label);
    my_cell.append(my_input);

    var my_row = $("<tr></tr>");
    my_row.append(my_cell);

    myParentObj.append(my_row);
}

function create_myRadio(myParentObj, control_obj) {
    var control_id = control_obj.ID;
    var control_display_text = control_obj.DisplayText
    var group = control_obj.GroupName;
    var item_list = control_obj.ItemList;

    var my_label;
    var my_input;

    var my_fieldset = $("<fieldset data-role=\"controlgroup\" id=\"" + control_id + "\" name=\"" + group + "\"></fieldset>");
    var my_legend = $("<legend>" + control_display_text + "</legend>");
    my_fieldset.append(my_legend);

    $.each(item_list, function () {
        var item_id = this.ID;
        var item_text = this.Text;
        var item_value = this.Value;

        my_label = $("<label for=\"" + item_id + "\">" + item_text + "</label>");
        my_fieldset.append(my_label);

        my_input = $("<input type=\"radio\" name=\"" + group + "\" id=\"" + item_id + "\" value=\"" + item_value + "\" />");
        my_fieldset.append(my_input);
    });

    var my_cell = $("<td></td>");
    my_cell.append(my_fieldset);

    var my_row = $("<tr></tr>");
    my_row.append(my_cell);

    myParentObj.append(my_row);
}

function create_myCheckbox(myParentObj, control_obj) {
    var control_id = control_obj.ID;
    var control_display_text = control_obj.DisplayText
    var group = control_obj.GroupName;
    var item_list = control_obj.ItemList;

    var my_fieldset = $("<fieldset data-role=\"controlgroup\" id=\"" + control_id + "\" name=\"" + group + "\"></fieldset>");
    var my_legend = $("<legend>" + control_display_text + "</legend>");
    my_fieldset.append(my_legend);

    var my_label;
    var my_input;

    $.each(item_list, function () {
        var item_id = this.ID;
        var item_text = this.Text;
        var item_value = this.Value;

        my_label = $("<label for=\"" + item_id + "\">" + item_text + "</label>");
        my_fieldset.append(my_label);

        my_input = $("<input type=\"checkbox\" name=\"" + group + "\" id=\"" + item_id + "\" value=\"" + item_value + "\" />");
        my_fieldset.append(my_input);
    });

    var my_cell = $("<td></td>");
    my_cell.append(my_fieldset);

    var my_row = $("<tr></tr>");
    my_row.append(my_cell);

    myParentObj.append(my_row);
}

function create_progressbar(myParentObj, control_obj) {
    var control_id = control_obj.ID;
    var control_display_text = control_obj.DisplayText
    var max_value = control_obj.Max;
    var min_value = control_obj.Min;
    var current_value = control_obj.Current;

    var my_label;
    var my_input;

    my_label = $("<label for=\"" + control_id + "\">" + control_display_text + "</label>");
    my_input = $("<input type=\"range\" name=\"points\" id=\"" + control_id + "\" value=\"" + current_value + "\" min=\"" + min_value + "\" max=\"" + max_value + "\">");

    var my_cell = $("<td></td>");
    my_cell.append(my_label);
    my_cell.append(my_input);

    var my_row = $("<tr></tr>");
    my_row.append(my_cell);

    myParentObj.append(my_row);

}