<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertimg.aspx.cs" Inherits="Insert_image.insertimg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function ShowPreview() {
            let fileInput = document.getElementById("FileUpload1");
            let filePath = fileInput.value; // Retrieve the file path
            alert(filePath)
            // Get the image element by ID
            let imageElement = document.getElementById("Image1");

            // Set the source attribute of the image element
            imageElement.src = window.URL.createObjectURL(fileInput.files[0]);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" onchange="ShowPreview(this)" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:Image ID="Image1" runat="server"  Height="200" Width="200"/>
        </div>
    </form>
</body>
</html>
