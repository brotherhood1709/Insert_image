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
            <asp:FileUpload ID="FileUpload1" onchange="ShowPreview(this)" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    images:
                    <asp:Label ID="imagesLabel" runat="server" Text='<%# Eval("images") %>' />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [images]"></asp:SqlDataSource>
            <asp:Image ID="Image1" runat="server"  Height="200" Width="200"/>
        </div>
    </form>
</body>
</html>
