using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _8_2 : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }
    protected void Button1_Click(object sender, EventArgs e) {
        if (TextBox1.Text != "" || TextBox2.Text != "") {
            Session["name"] = TextBox1.Text;
            Response.Redirect("8-1.aspx");
        }
        else
            Response.Write("<script language='javascript'>alert('用户名或密码不能为空！');</script>");
    }
}