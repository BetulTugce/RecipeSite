<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="RecipeSite.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style9 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style8 {
            font-size: small;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            width: 93px;
        }
        .auto-style18 {
            text-align: right;
            width: 93px;
        }
        .auto-style19 {
            width: 107%;
        }
        .auto-style20 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
    <asp:Label ID="lblName" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList3" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9" style="border-width: thin thin Thin thin; border-style: inset;">
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                        <strong>&nbsp;&nbsp; -&nbsp;&nbsp; </strong></strong></strong></strong>
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style8" Text='<%# Eval("DATE") %>'></asp:Label>
                        <strong>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("COMMENT") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style19">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">İsim :</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtName" runat="server" Width="458px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Mail :</td>
                <td class="auto-style10"><strong>
                    <asp:TextBox ID="txtMail" runat="server" Width="458px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style18">Yorum :</td>
                <td class="auto-style10"><strong>
                    <asp:TextBox ID="txtComment" runat="server" Width="458px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Button ID="btnSend" runat="server" Text="Gönder" CssClass="auto-style11" OnClick="btnSend_Click" Width="150px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
