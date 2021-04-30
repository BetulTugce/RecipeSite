<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="RecipeSite.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 409px;
        }
        .auto-style8 {
            width: 147px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 181px;
        }
        .auto-style11 {
            width: 170px;
        }
        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>Onaylanan Yorumlar</strong></td>
                <td class="auto-style9">
                    <asp:ImageButton ID="btnListTrue" runat="server" Height="30px" ImageUrl="~/Icon/menu2.png" Width="30px" OnClick="btnListTrue_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="514px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("NAME") %>'></asp:Label>
                        </td>
                        <td class="auto-style12"><a href="Comments.aspx?ID=<%#Eval("ID") %>&operation=delete">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icon/delete3.png" Width="30px" />
                            </a></td>
                        <td class="auto-style12"><a href="UpdateComments.aspx?ID=<%#Eval("ID") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icon/update.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"><strong>Onaylanmayan Yorumlar</strong></td>
                <td class="auto-style9">
                    <asp:ImageButton ID="btnListFalse" runat="server" Height="30px" ImageUrl="~/Icon/menu2.png" Width="30px" OnClick="btnListFalse_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="514px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("NAME") %>'></asp:Label>
                        </td>
                        <td class="auto-style12"><a href="Comments.aspx?ID=<%#Eval("ID") %>&operation=delete">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icon/delete3.png" Width="30px" />
                            </a></td>
                        <td class="auto-style12"><a href="UpdateComments.aspx?ID=<%#Eval("ID") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icon/update.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
