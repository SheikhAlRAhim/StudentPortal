using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOGIN
{
    public partial class LOGIN_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Parentlogin obj = new Parentlogin();
            obj.UserID = TextBox1.Text;
            obj.Password = TextBox2.Text;

        }
        
    }

}