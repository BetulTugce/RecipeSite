<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RecipeSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
<asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Giriş"></asp:Label>
</strong>
<table class="auto-style3">
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Kullanıcı Adı : </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="350px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Şifre : </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="350px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style6">
            <asp:Button ID="btnLogin" runat="server" CssClass="auto-style5" OnClick="btnLogin_Click" Text="Giriş Yap" Width="200px" />
        </td>
    </tr>
</table>
</asp:Content>
