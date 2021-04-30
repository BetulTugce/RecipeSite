<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="CategoryDetails.aspx.cs" Inherits="RecipeSite.CategoryDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style8 {
            text-align: center;
        }

        .auto-style9 {
            font-size: x-large;
            color: #000000;
        }

        .auto-style7 {
            text-align: left;
        }

        .auto-style10 {
            height: 23px;
            margin-left: 40px;
        }
    .auto-style11 {
        text-align: left;
        font-size: medium;
        color: #000000;
    }
    .auto-style12 {
        font-size: medium;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong><a href="Detail.aspx?ID=<%#Eval("ID") %>">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text='<%# Eval("NAME") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style11"><strong>Kategori : </strong>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("CATEGORYID") %>'></asp:Label>
                            </td>
                            <td class="auto-style8"><strong>Puan : </strong>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("POINT") %>'></asp:Label>
                            </td>
                            <td class="auto-style12"><strong>Tarih : </strong>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("DATE") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl='<%# Eval("IMAGE") %>' Width="400px" />
                </td>
            </tr>
            <tr>
                <td><strong>MALZEMELER : </strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("INGREDIENTS") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>YAPILIŞI : </strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("METHOD") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="border-bottom-style: double; border-bottom-width: 3px; border-bottom-color: #003399">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
