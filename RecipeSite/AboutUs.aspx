<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="RecipeSite.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
        <strong>Hakkımızda</strong></p>
    <p class="auto-style6">
        <strong>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TEXT") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        </strong>
    </p>
</asp:Content>
