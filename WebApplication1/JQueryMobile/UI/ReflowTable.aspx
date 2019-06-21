<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReflowTable.aspx.cs" Inherits="WebApplication1.JQueryMobile.ReflowTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
    <!--
        回流模型表格在屏幕尺寸足够大时是水平显示，而在屏幕尺寸达到足够小时，所有的数据会变成垂直显示。
        -->
<body>
    <form id="form1" runat="server">
    <div>
        <table data-role="table" class="ui-responsive">
            <thead>
                <tr>
                    <th>head1</th>
                    <th>head2</th>
                    <th>head3</th>
                    <th>head4</th>
                    <th>head5</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>column1 data</td>
                    <td>column2 data</td>
                    <td>column3 data</td>
                    <td>column4 data</td>
                    <td>column5 data</td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
