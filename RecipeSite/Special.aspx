<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Special.aspx.cs" Inherits="RecipeSite.Special" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            text-align: center;
        }
        .auto-style9 {
            text-align: left;
            height: 23px;
        font-size: medium;
    }
    .auto-style10 {
        text-align: right;
        height: 23px;
        color: #000000;
        font-size: medium;
    }
        .auto-style8 {
            height: 254px;
            text-align: center;
        }
        .auto-style11 {
        font-size: medium;
    }
    .auto-style12 {
        color: #333333;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="556px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style12" Text='<%# Eval("NAME") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style9"><span class="auto-style11"><strong>Puan :</strong> </span>
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("POINT") %>' CssClass="auto-style11"></asp:Label>
                            </td>
                            <td class="auto-style10"><strong>Tarih</strong> <strong>:</strong>
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("DATE") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Image ID="Image3" runat="server" Height="250px" ImageUrl='<%# Eval("IMAGE") %>' Width="450px" />
                </td>
            </tr>
            <tr>
                <td><strong>MALZEMELER :</strong>
                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("INGREDIENTS") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>YAPILIŞI :</strong>
                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("METHOD") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
