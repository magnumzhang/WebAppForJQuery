<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <script>
        function test_a()
        {
            alert("this is test a");
        }

        function fa(target)
        {
            alert("fa");
            target();
        }

        $(document).on("pagecreate", "#g1", function () {

            $("#p1").bind("click", test);

        });

     function test()
        {
         alert("cc");
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">

        <div data-role="page" id="g1">
            <div data-role="main" class="ui-content" id="a">
               <p id="p1">111</p>
 <%--
                <p id="p2">222<asp:TextBox ID="TextBox2" runat="server" data-role="none"></asp:TextBox>
                </p>--%>
            </div>

            <%--<fieldset data-role="controlgroup" name="ggg" id="w1">
<legend>Choose your gender:</legend>
<label for="male">Male</label>
<input type="radio" name="gender" id="male" value="male" />
<label for="female">Female</label>
<input type="radio" name="gender" id="female" value="female" /> 
</fieldset>--%>
   

  <%-- <label for="g001">gggg</label>

       <input type="radio" name=" + group + " id="g001" value=" 88" />--%>
            



<%--            <asp:TextBox ID="TextBox1" runat="server" Text="aaaaa"></asp:TextBox>
            <input type="text" kk="abc" id="p6" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />--%>

        </div>
    </form>
</body>
</html>
