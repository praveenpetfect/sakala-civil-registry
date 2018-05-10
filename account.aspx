<%@ Page Language="C#" MasterPageFile="~/masterindex.master" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td  colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="X-Large" Text="Create an account" Font-Underline="True" ForeColor="#404040"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3">&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="First name"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Last name"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Desired login name" Width="132px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtLoginName" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="btnChkAvailable" runat="server" Text="Check availability" OnClick="btnChkAvailable_Click" /></td>
        </tr>
        <tr>
            <td colspan="2">
                </td>
            <td colspan="1">
                <asp:Label ID="lblAvail" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Choose a password" Width="135px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtPass" runat="server"  TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Re-enter password" Width="134px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass"
                    ControlToValidate="txtConfirmPass" ErrorMessage="password missmatch" Width="140px"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="E-mail id"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 21px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Invalid E-mail ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Location"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Button ID="btnReg" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="I accept. Create my account" OnClick="btnReg_Click" Enabled="False" /></td>
            <td colspan="1" style="height: 21px">
                <asp:Button ID="btnReset" runat="server" Font-Bold="True" OnClick="btnReset_Click"
                    Text="Reset" /></td>
        </tr>
    </table>
    &nbsp;
</asp:Content>

