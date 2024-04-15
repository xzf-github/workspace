using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy2_3 : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e) {
        string num = TextBox1.Text;
        char[] chars=num.ToCharArray();
        if(chars != null && chars.Length > 1 ) {
            Array.Reverse(chars);
            Label1.Text = new string(chars);
        }else { Response.Write("输入的内容至少是两个字符");
            Label1.Text = "";
        }
        
    }
}