<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditCat.aspx.cs" Inherits="Project_asp.EditCat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
            width: 319px;
        }
        .auto-style2 {
            height: 32px;
        }
        .auto-style3 {
            width: 241px;
            height: 32px;
        }
        .auto-style4 {
            width: 241px;
        }
        .auto-style5 {
            width: 113px;
        }
        .auto-style6 {
            margin-bottom: 30;
        }
        .auto-style7 {
        width: 190px;
        height: 32px;
    }
        .auto-style8 {
        width: 190px;
    }
        .auto-style9 {
            height: 32px;
            width: 354px;
        }
        .auto-style10 {
            width: 354px;
        }
        .auto-style13 {
        width: 170px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="420px" DataKeyNames="Category_id" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Height="300px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" >
                        <ControlStyle ForeColor="Black" />
                        </asp:CommandField>
                        <asp:BoundField DataField="Category_name" HeaderText="Name" >
                        <ControlStyle ForeColor="Black" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="Category_image" HeaderText="Image">
                            <ControlStyle Height="30px" Width="30px" ForeColor="Black" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Category_description" HeaderText="Description" >
                        <FooterStyle ForeColor="Black" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Category_status" HeaderText="Status" >
                        <ControlStyle ForeColor="Black" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
        </table>
    <table>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style7">
        </td>
        <td class="auto-style3">
            <asp:Label ID="Label7" runat="server" Text="Category Name" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="Label8" runat="server" Text="Category Image" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td class="auto-style10">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style7">
        </td>
        <td class="auto-style3">
            <asp:Label ID="Label9" runat="server" Text="Category Description" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="Label10" runat="server" Text="Category Status" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style6"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td class="auto-style10">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Label ID="Label11" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
