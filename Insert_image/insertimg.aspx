<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertimg.aspx.cs" Inherits="Insert_image.insertimg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function ShowPreview() {/*
            let url = document.getElementById("FileUpoad1")
            let filePath = url.value;*/
            let fileInput = document.getElementById("FileUpload1");
            let filePath = fileInput.value; // Retrieve the file path
            alert(filePath)
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" onchange="ShowPreview(this)" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
