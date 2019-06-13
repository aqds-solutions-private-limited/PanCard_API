using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Complaint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    try
    {
     string name = Session["username"].ToString();
        SqlConnection con = new SqlConnection("Data Source=Abc-PC\\SQLEXPRESS;Initial Catalog=API-DB;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
 
  if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
    con.Open();
   
      


        cmd = new SqlCommand("StoredProcedure5", con);
            cmd.CommandType = CommandType.StoredProcedure;
    
    cmd.ExecuteNonQuery();
   con.Close();
}
catch(Exception ex)
{}
    }
}
