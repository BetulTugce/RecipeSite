<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Recipes.aspx.cs" Inherits="RecipeSite.Recipes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            width: 110px;
        }
        .auto-style7 {
            width: 404px;
        }
        .auto-style6 {
            width: 407px;
        }
        .auto-style4 {
            width: 409px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>Tarif Önerileri</strong></td>
                <td class="auto-style9">
                    <asp:ImageButton ID="btnList" runat="server" Height="30px" ImageUrl="~/Icon/menu2.png" Width="30px" OnClick="btnList_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="514px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("NAME") %>'></asp:Label>
                        </td>
                        <td class="auto-style5"><a href="Recipes.aspx?ID=<%#Eval("ID") %>&operation=delete">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icon/delete3.png" Width="30px" />
                            </a></td>
                        <td class="auto-style4"><a href="RecipeDetails.aspx?ID=<%#Eval("ID") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icon/read-message.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
