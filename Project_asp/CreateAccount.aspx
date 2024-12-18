<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Project_asp.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 301px;
        }
        .auto-style3 {
            width: 276px;
            height: 32px;
        }
        .auto-style4 {
            width: 301px;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            width: 368px;
        }
        .auto-style7 {
            width: 368px;
            height: 32px;
        }
        .auto-style8 {
            width: 276px;
            height: 54px;
        }
        .auto-style9 {
            width: 301px;
            height: 54px;
        }
        .auto-style10 {
            width: 368px;
            height: 54px;
        }
        .auto-style11 {
            height: 54px;
        }
        .auto-style12 {
            width: 288%;
            height: 307px;
        }
        .auto-style15 {
            width: 268px;
        }
        .auto-style17 {
            width: 319px;
            height: 28px;
        }
        .auto-style18 {
            width: 268px;
            height: 28px;
        }
        .auto-style19 {
            height: 28px;
        }
        .auto-style21 {
            height: 28px;
            width: 2px;
        }
        .auto-style24 {
            width: 2px;
        }
        .auto-style25 {
            width: 319px;
        }
        .auto-style26 {
            width: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC6600" Text="Create Account"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Account Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="47px" Width="214px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Account Number"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="43px" Width="211px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style7"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Account Type"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox3" runat="server" Height="46px" Width="207px"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style7"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Balance Amount"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Height="48px" Width="205px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Small" Height="51px" Text="SKIP" Width="184px" CssClass="offset-sm-0" OnClick="Button1_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button2" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Small" ForeColor="Black" Height="51px" Text="SAVE" Width="184px" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Small" Height="51px" Text="UPDATE BALANCE" Width="184px" BackColor="#FF9900" ForeColor="Black" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="auto-style12">
                        <tr>
                            <td class="auto-style21"></td>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style19"></td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC6600" Text="Update Balance"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Bank Balance"></asp:Label>
                            </td>
                            <td class="auto-style15">&nbsp;₹<asp:Label ID="Label13" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label12" runat="server" ForeColor="Black" Text="Update Amount"></asp:Label>
                            </td>
                            <td class="auto-style15">&nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="51px" Width="218px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style15">
                                <asp:Button ID="Button4" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Small" ForeColor="Black" Height="48px" OnClick="Button4_Click" Text="UPDATE" Width="155px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style15">
                                <asp:Label ID="Label11" runat="server" ForeColor="Black"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style7"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
