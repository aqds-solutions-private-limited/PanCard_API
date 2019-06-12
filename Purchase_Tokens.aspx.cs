using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Purchase_Tokens : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
        
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        if (Label4.Text != "" && TextBox6.Text != "")
        {

            int val2 = Convert.ToInt32(Label4.Text);
            int val1 = Convert.ToInt32(TextBox6.Text);

            int val3 = val1 * val2;
            TextBox2.Text = val3.ToString();
        }

    }
}