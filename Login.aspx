<%@ Page Language="C#" MasterPageFile="~/masterindex.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" align="center" valign="middle">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="X-Large" Text="Login"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 20px" valign="top">
                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Style="font-weight: bold;
                    font-size: 12pt" Text="Label" Visible="False" Width="116px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 84px">
            </td>
            <td style="width: 304px">
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="New user?"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="hypsign" runat="server" Font-Bold="True"
                    Font-Names="Times New Roman" Font-Size="Medium" NavigateUrl="~/account.aspx">Sign up</asp:HyperLink>
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 84px">
            </td>
            <td style="width: 304px">
            </td>
        </tr>
        <tr>
            <td style="width: 84px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Username"></asp:Label></td>
            <td style="width: 304px">
                <asp:TextBox ID="txtuser" runat="server" Width="126px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 84px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Password"></asp:Label></td>
            <td style="width: 304px">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="127px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 84px">
            </td>
            <td style="width: 304px">
            </td>
        </tr>
        <tr>
            <td style="width: 84px; height: 21px;">
            </td>
            <td style="width: 304px; height: 21px;">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="bt_submit" runat="server" OnClick="bt_submit_Click" Text="Submit" />
                <asp:Button ID="bt_reset" runat="server" OnClick="bt_reset_Click" Text="Reset" /></td>
        </tr>
    </table>
</asp:Content>

