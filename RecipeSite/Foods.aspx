<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Foods.aspx.cs" Inherits="RecipeSite.Foods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 378px;
            margin-left: 0px;
        }
        .auto-style10 {
            width: 107px;
            margin-left: 0px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            text-align: left;
            width: 170px;
        }
    .auto-style13 {
        text-align: center;
        height: 23px;
        background-color: #FFFFFF;
    }
    .auto-style14 {
        background-color: #FFFFFF;
    }
    .auto-style15 {
        text-align: right;
        height: 23px;
        background-color: #FFFFFF;
    }
        .auto-style16 {
            text-align: right;
            height: 23px;
            background-color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style17 {
            margin-left: 0px;
            font-weight: bold;
        }
        .auto-style18 {
            text-align: center;
            height: 23px;
            background-color: #FFFFFF;
            width: 88px;
        }
        .auto-style19 {
            background-color: #FFFFFF;
            width: 96px;
        }
        .auto-style20 {
            margin-left: 0px;
            font-weight: bold;
            width: 96px;
        }
        .auto-style21 {
            height: 26px;
            width: 96px;
        }
        .auto-style22 {
            text-align: center;
            height: 23px;
            background-color: #FFFFFF;
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style14">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>Yemek</strong> <strong>Ekle</strong></td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14">
        <table class="auto-style1">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Yemek Adı : </strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtName" runat="server" Width="404px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Malzemeler :</strong></td>
                <td class="auto-style18">
                    &nbsp;
                    <asp:TextBox ID="txtIngredients" runat="server" Height="80px" TextMode="MultiLine" Width="402px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Yapılışı : </strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtMethod" runat="server" Height="130px" TextMode="MultiLine" Width="404px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Kategori : </strong></td>
                <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="404px" CssClass="auto-style8">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Resim : </strong></td>
                <td class="auto-style11">
                    &nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="404px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="btnAdd" runat="server" CssClass="auto-style17" Text="Ekle" Width="150px" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"><strong>Yemek Listesi</strong></td>
                <td class="auto-style7">
                    <asp:ImageButton ID="btnList" runat="server" Height="30px" ImageUrl="~/Icon/menu2.png" Width="30px" OnClick="btnList_Click" CssClass="auto-style8" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style14">
        <asp:DataList ID="DataList1" runat="server" Width="514px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("NAME") %>'></asp:Label>
                        </td>
                        <td class="auto-style15"><a href="Foods.aspx?ID=<%#Eval("ID") %>&operation=delete">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Icon/delete3.png" Width="30px" />
                            </a></td>
                        <td class="auto-style15"><a href="UpdateFoods.aspx?ID=<%#Eval("ID") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icon/update.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
