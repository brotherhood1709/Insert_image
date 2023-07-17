<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertimg.aspx.cs" Inherits="Insert_image.insertimg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function ShowPreview() {
            let fileInput = document.getElementById("FileUpload1");
            let filePath = fileInput.value; // Retrieve the file path
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
            <asp:Image ID="Image1" runat="server"  Height="200" Width="200"/>

            <asp:FileUpload ID="FileUpload1" onchange="ShowPreview(this)" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" RepeatColumns="2" style="margin-right: 26px">
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    images:<asp:Image ID="Image2" runat="server" Height="115px" Width="123px" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [images]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
