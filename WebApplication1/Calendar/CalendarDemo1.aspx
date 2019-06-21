<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarDemo1.aspx.cs" Inherits="WebApplication1.Calendar.CalendarDemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="css/dcalendar.picker.css" />

    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/dcalendar.picker.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $("#btnSubmit").bind("click", click_event);
        });

        function click_event() {

            var str = "";
            str += $("#mydatepicker1").val() + "<br/>";
            str += $("#mydatepicker2").val() + "<br/>";
            str += $("#mydatepicker3").val() + "<br/>";

            alert(str);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input id='mydatepicker1' type='text' onmousedown="$(this).dcalendarpicker()" />
            <input id='mydatepicker2' type='text' onmousedown="$(this).dcalendarpicker({format:'yyyy-mm-dd', todayBtn:true, language:'en-US'"})" />
            <input id='mydatepicker3' type='text' />
            <button id="btnSubmit" type="button">Submit</button>

             
   
        </div>

    </form>
    <script type="text/javascript">
        $("#mydatepicker3").dcalendarpicker({
            format: 'yyyy-mm-dd ', mode: 
          
        });
    </script>
</body>
</html>
