<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateComments.aspx.cs" Inherits="RecipeSite.UpdateComments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Adı : </strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="txtName" runat="server" Width="436px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mail : </strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="txtMail" runat="server" Width="436px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Yorum :</strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="txtComment" runat="server" Height="80px" TextMode="MultiLine" Width="436px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style5"><strong>
            <asp:Button ID="btnConfirm" runat="server" CssClass="auto-style9" Text="Onayla" Width="150px" OnClick="btnConfirm_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
