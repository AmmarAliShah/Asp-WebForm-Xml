<%@ Page Title="Signup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WEA01.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Users</h2>
            </div>
            <hr />
            <div class="col-md-6">
                <asp:Label ID="Name" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="tbName" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Age" runat="server" Text="Age:"></asp:Label>
                <asp:TextBox ID="tbAge" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Gender" runat="server" Text="Gender:"></asp:Label>
                <asp:TextBox ID="tbGender" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
            </div>
            <div class="col-md-6 text-center">
                <asp:GridView ID="gvSignup" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" Width="20em" Height="20em">  
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
