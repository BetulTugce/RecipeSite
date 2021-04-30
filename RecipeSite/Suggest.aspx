<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Suggest.aspx.cs" Inherits="RecipeSite.Suggest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
        text-align: right;
        width: 161px;
    }
        .auto-style8 {
            text-align: center;
            margin-left: 80px;
        }
        .auto-style9 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #003399;
        }
    .auto-style10 {
        width: 161px;
    }
    .auto-style11 {
        color: #333333;
        text-align: right;
    }
    .auto-style12 {
        text-align: right;
        width: 161px;
        height: 26px;
    }
    .auto-style13 {
        color: #333333;
        height: 26px;
    }
    .auto-style14 {
        width: 105%;
    }
    .auto-style15 {
        text-align: right;
        width: 161px;
        font-size: medium;
        color: #000000;
    }
    .auto-style16 {
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Tarif Adı :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="txtRecipeName" runat="server" Width="420px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong><span class="auto-style16">Malzemeler :</span></strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="txtIngredients" runat="server" Height="70px" TextMode="MultiLine" Width="420px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Yapılışı :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="txtMethod" runat="server" Height="110px" TextMode="MultiLine" Width="420px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Resim :</strong></td>
        <td class="auto-style11">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="425px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Öneren :</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="txtName" runat="server" Width="420px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>E-Mail :</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="txtMail" runat="server" Width="420px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style8"><strong>
            <asp:Button ID="btnSend" runat="server" CssClass="auto-style9" Text="Gönder" Width="150px" OnClick="btnSend_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
