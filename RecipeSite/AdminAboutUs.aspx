<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAboutUs.aspx.cs" Inherits="RecipeSite.AdminAboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        font-size: large;
        height: 36px;
    }
    .auto-style7 {
        font-weight: bold;
    }
    .auto-style8 {
        font-size: medium;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6"><strong>Hakkımızda</strong></td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtAboutUs" runat="server" CssClass="auto-style8" Height="320px" TextMode="MultiLine" Width="502px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>
            <asp:Button ID="btnUpdate" runat="server" CssClass="auto-style7" Height="40px" OnClick="btnUpdate_Click" Text="Güncelle" Width="300px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
