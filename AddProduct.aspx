<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WEA01.AddProduct" %>
<asp:Content ID="addProduct" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Products</h2>
            </div>
            <hr />
            <div class="col-md-6">
                <asp:Label ID="Name" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="tbName" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Price" runat="server" Text="Price:"></asp:Label>
                <asp:TextBox ID="tbPrice" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Quantiy" runat="server" Text="Quantity:"></asp:Label>
                <asp:TextBox ID="tbQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
            </div>
            <div class="col-md-6 text-center">
                <asp:GridView ID="gvProducts" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" Width="20em" Height="20em">  
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />  
                <EditRowStyle BackColor="#999999" />  
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />  
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />  
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />  
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />  
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />  
                <SortedAscendingCellStyle BackColor="#E9E7E2" />  
                <SortedAscendingHeaderStyle BackColor="#506C8C" />  
                <SortedDescendingCellStyle BackColor="#FFFDF8" />  
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />  
            </asp:GridView> 
            </div>
        </div>
    </div>
</asp:Content>
