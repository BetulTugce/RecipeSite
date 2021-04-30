<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="RecipeSite.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            width: 388px;
        }
        .auto-style9 {
            width: 387px;
        }
        .auto-style10 {
            width: 117px;
        }
        .auto-style11 {
            text-align: left;
            width: 203px;
        }
        .auto-style12 {
            text-align: left;
            width: 170px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>Kategori Ekle</strong></td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Kategori Adı : </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtName" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style6"><strong>
                    <asp:Button ID="btnAdd" runat="server" CssClass="auto-style15" Text="Ekle" Width="150px" OnClick="btnAdd_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"><strong>Kategori Listesi</strong></td>
                <td class="auto-style7">
                    <asp:ImageButton ID="btnListCategories" runat="server" Height="30px" ImageUrl="~/Icon/menu2.png" OnClick="btnListCategories_Click" Width="30px" />
                </td>
            </tr>
        </table>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="514px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <a href="Categories.aspx?ID=<%#Eval("ID") %>&operation=delete"> <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icon/delete3.png" Width="30px" /></a>
                    </td>
                    <td class="auto-style6">
                        <a href="UpdateCategories.aspx?ID=<%#Eval("ID") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icon/update.png" Width="30px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
    
</asp:Content>
