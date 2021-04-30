<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RecipeSite.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 66px;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
            margin-left: 40px;
        }
        .auto-style9 {
            text-align: center;
            height: 30px;
            margin-left: 40px;
        }
        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            width: 66px;
            text-align: right;
        }
        .auto-style12 {
            width: 66px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Ad :</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtName" runat="server" Width="430px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mail :</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtMail" runat="server" Width="430px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Konu :</strong> </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtTitle" runat="server" Width="430px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Mesaj :</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMessage" runat="server" Height="85px" TextMode="MultiLine" Width="430px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style9"><strong>
                <asp:Button ID="btnSend" runat="server" CssClass="auto-style10" OnClick="btnSend_Click" Text="Gönder" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
