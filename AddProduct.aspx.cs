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
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvProducts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void gridDataBind()
        {
            DataSet ds = new DataSet();   
            ds.ReadXml(Server.MapPath("Products.xml")); 
            gvProducts.DataSource = ds;
            gvProducts.DataBind();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            XmlDocument XmlDocObj = new XmlDocument();
            XmlDocObj.Load(Server.MapPath("Products.xml"));
            XmlNode RootNode = XmlDocObj.SelectSingleNode("product");
            XmlNode productNode = RootNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "product", ""));
            productNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Name", "")).InnerText = tbName.Text;
            productNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Price", "")).InnerText = tbPrice.Text;
            productNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Quanity", "")).InnerText = tbQuantity.Text;
            XmlDocObj.Save(Server.MapPath("Products.xml"));
            gridDataBind();
        }
    }
}