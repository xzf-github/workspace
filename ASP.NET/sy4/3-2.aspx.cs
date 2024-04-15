using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        Label1.Text = Request["UserName"];
        int Time = DateTime.Now.Hour.CompareTo(13);
        string str;
        if (Time > 0) {
            str = "下午好！";
        }
        else if (Time < 0) {
            str = "上午好！";

        }
        else {
            str = "中午好！";

        }
        Label2.Text = str;
    }
}