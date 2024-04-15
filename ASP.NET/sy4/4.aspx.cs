using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4 : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        string path1, path2;
        path1 = Server.MapPath("\\");
        path2 = Server.MapPath("/4.apsx");
        Label1.Text = path1;
        Label2.Text = path2;
    }
}