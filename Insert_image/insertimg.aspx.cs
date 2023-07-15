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
    }
}