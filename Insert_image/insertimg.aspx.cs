using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Insert_image
{
    public partial class insertimg : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\Parth\\Insert_image\\Insert_image\\App_Data\\images.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExtension == ".pdf" || fileExtension == ".jpg")
            {
                FileUpload1.SaveAs(Server.MapPath("images/" + FileUpload1.FileName));
                string sql = "insert into images values('" + FileUpload1.FileName + "')";
                SqlDataAdapter adapter = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                Response.Write("Inserted");
            }
            else
            {

            }
        }
        /*
         CREATE TABLE [dbo].[Registration] (
            [Id]               INT           NOT NULL,
            [Date]             NCHAR (10)    NOT NULL,
            [Party_Name]       NVARCHAR (50) NOT NULL,
            [Consigment_No]    NVARCHAR (13) NOT NULL,
            [Weight]           NCHAR (10)    NOT NULL,
            [Total_Amount]     NVARCHAR (20) NOT NULL,
            [Charges]          VARCHAR (50)  NOT NULL,
            [To_Destination]   VARCHAR (50)  NOT NULL,
            [From_Destination] VARCHAR (50)  NOT NULL,
            CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED ([Id] ASC)
        );
        CREATE TABLE [dbo].[Register_user] (
    [First_Name]       VARCHAR (50)  NOT NULL,
    [Last_Name]        VARCHAR (50)  NOT NULL,
    [Email]            NCHAR (50)    NOT NULL,
    [Username]         NVARCHAR (50) NOT NULL,
    [Password]         NVARCHAR (50) NOT NULL,
    [Confirm_Password] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Register_user] PRIMARY KEY CLUSTERED ([Username] ASC)
);

CREATE TABLE [dbo].[Login] (
    [username] NVARCHAR (50) NOT NULL,
    [password] NVARCHAR (50) NOT NULL
);
CREATE TABLE [dbo].[Courier_Entry] (
    [Id]               INT           NOT NULL,
    [Date]             NCHAR (10)    NOT NULL,
    [Party_Name]       NVARCHAR (50) NOT NULL,
    [Consignment _No]  NVARCHAR (13) NOT NULL,
    [Weight]           NCHAR (10)    NOT NULL,
    [Total_Amount]     NVARCHAR (20) NOT NULL,
    [Charges]          NCHAR (10)    NOT NULL,
    [To_Destination]   NVARCHAR (50) NOT NULL,
    [From_Destination] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Courier_Entry] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Contact] (
    [Your_name]    NVARCHAR (50)  NOT NULL,
    [Your_email]   NVARCHAR (50)  NOT NULL,
    [Subject]      NVARCHAR (50)  NOT NULL,
    [Your_message] NVARCHAR (MAX) NOT NULL
);



         */
    }
}