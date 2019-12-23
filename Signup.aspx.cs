using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace WEA01
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void gridDataBind()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("Signup.xml"));
            gvSignup.DataSource = ds;
            gvSignup.DataBind();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            XmlDocument XmlDocObj = new XmlDocument();
            XmlDocObj.Load(Server.MapPath("Signup.xml"));
            XmlNode RootNode = XmlDocObj.SelectSingleNode("signup");
            XmlNode signupNode = RootNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "signup", ""));
            signupNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Name", "")).InnerText = tbName.Text;
            signupNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Age", "")).InnerText = tbAge.Text;
            signupNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Gender", "")).InnerText = tbGender.Text;
            XmlDocObj.Save(Server.MapPath("Signup.xml"));
            gridDataBind();
        }
    }
}