<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateFoods.aspx.cs" Inherits="RecipeSite.UpdateFoods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 467px;
        }
        .auto-style5 {
            width: 467px;
            text-align: right;
        }
        .auto-style6 {
            width: 467px;
            height: 23px;
        }
        .auto-style8 {
            font-weight: bold;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yemek Adı : </strong></td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler : </strong></td>
            <td>
                <asp:TextBox ID="txtIngredients" runat="server" Height="80px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yapılışı : </strong></td>
            <td>
                <asp:TextBox ID="txtMethod" runat="server" Height="130px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Kategori : </strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="410px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Resim : </strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="405px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style2"><strong>
                <asp:Button ID="btnUpdate" runat="server" CssClass="auto-style8" OnClick="btnUpdate_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnSpecial" runat="server" OnClick="btnSpecial_Click" Text="Günün Yemeği Seç" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
