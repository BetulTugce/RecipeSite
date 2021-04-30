<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="RecipeDetails.aspx.cs" Inherits="RecipeSite.RecipeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
    }
    .auto-style7 {
        width: 95px;
    }
    .auto-style8 {
        height: 23px;
        width: 95px;
    }
    .auto-style9 {
        width: 95px;
        height: 22px;
    }
    .auto-style10 {
        height: 22px;
    }
    .auto-style11 {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Öneren : </strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="txtOwner" runat="server" Width="404px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail : </strong></td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" Width="404px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Tarif Adı : </strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="txtName" runat="server" Width="404px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Malzemeler : </strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="txtIngredients" runat="server" Width="404px" Height="144px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Yapılışı : </strong></td>
        <td class="auto-style6">
            <asp:TextBox ID="txtMethod" runat="server" Width="404px" Height="170px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Resim : </strong></td>
        <td class="auto-style6">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="408px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">
            Lütfen kategori seçin.</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style6">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="404px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2"><strong>
            <asp:Button ID="btnCheck" runat="server" CssClass="auto-style11" OnClick="btnCheck_Click" Text="Onayla" Width="150px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
