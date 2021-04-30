<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RecipeSite.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }

        .auto-style7 {
            text-align: left;
        }

        .auto-style8 {
            text-align: center;
        }

        .auto-style9 {
            font-size: x-large;
            color: #000000;
        }

        .auto-style10 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            font-size: medium;
            text-align: right;
        }
        .auto-style14 {
            height: 20px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"><strong>

                        <a href="Detail.aspx?ID=<%#Eval("ID") %>"><asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text='<%# Eval("NAME") %>'></asp:Label></a>

                    </strong></td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style12"><strong>Puan : </strong>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("POINT") %>'></asp:Label>
                                </td>
                                <td class="auto-style13"><strong>Tarih : </strong>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("DATE") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl='<%# Eval("IMAGE") %>' Width="400px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>MALZEMELER : </strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("INGREDIENTS") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong>YAPILIŞI : </strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("METHOD") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="border-bottom-style: double; border-bottom-width: 3px; border-bottom-color: #003399">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
