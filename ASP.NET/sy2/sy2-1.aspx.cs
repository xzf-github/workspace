using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e) {
        float x; x = float.Parse(TextBox1.Text);
        if (x >= 90) Label1.Text = "等级为A";
        else if (x >= 80) Label1.Text = "等级为B";
        else if (x >= 70) Label1.Text = "等级为C";
        else if (x >= 60) Label1.Text = "等级为D";
        else Label1.Text = "不合格,分数未满足评级要求";
    }
}