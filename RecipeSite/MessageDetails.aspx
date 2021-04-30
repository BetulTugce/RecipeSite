<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MessageDetails.aspx.cs" Inherits="RecipeSite.MessageDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: right;
        width: 131px;
    }
    .auto-style5 {
        width: 131px;
    }
    .auto-style6 {
        text-align: left;
        width: 131px;
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Başlık : </strong></td>
        <td>
            <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mesaj Gönderen : </strong></td>
        <td>
            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mail : </strong></td>
        <td>
            <asp:Label ID="lblMail" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mesaj : </strong></td>
        <td>
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
