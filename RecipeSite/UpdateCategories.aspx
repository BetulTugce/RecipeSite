<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateCategories.aspx.cs" Inherits="RecipeSite.UpdateCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            text-align: right;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Kategori Adı : </strong></td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="396px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Adet : </strong></td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server" Width="396px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7"><strong>
                <asp:Button ID="btnUpdate" runat="server" CssClass="auto-style6" OnClick="btnUpdate_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
