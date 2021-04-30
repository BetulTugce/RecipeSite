<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSpecial.aspx.cs" Inherits="RecipeSite.AdminSpecial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 376px;
            text-align: right;
            height: 38px;
        }
        .auto-style5 {
            width: 375px;
            text-align: right;
        }
        .auto-style6 {
            width: 372px;
        }
        .auto-style7 {
            width: 369px;
            height: 38px;
        }
        .auto-style8 {
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>Yemek Listesi</strong></td>
                <td class="auto-style9">
                    <asp:ImageButton ID="btnList" runat="server" Height="30px" ImageUrl="~/Icon/menu2.png" Width="30px" OnClick="btnList_Click" />
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
                        <td class="auto-style4"><a href="UpdateFoods.aspx?ID=<%#Eval("ID") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icon/cook.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
