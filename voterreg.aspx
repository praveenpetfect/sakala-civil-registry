<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="voterreg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" colspan="5">
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman"
        Font-Size="Large" Text="Voters Form" Font-Underline="False"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="5">
                <asp:Label ID="Lbl" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 541px">
                <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" EnableViewState="False"></asp:Label></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtname" runat="server" Width="160px"></asp:TextBox></td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: 700;">
                Father Name</td>
            <td style="width: 116px">
                <asp:TextBox ID="txtfname" runat="server" Width="160px"></asp:TextBox></td>
            <td style="width: 119px">
            </td>
            <td>
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; height: 20px;">
                &nbsp;</td>
            <td style="width: 116px; height: 20px;">
                &nbsp;</td>
            <td style="width: 119px; height: 20px;">
            </td>
            <td style="height: 20px;">
            </td>
            <td style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; height: 22px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: 700;">
                Gender</td>
            <td style="width: 116px; height: 22px;">
                <asp:DropDownList ID="ddl" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 119px; height: 22px;">
                &nbsp;</td>
            <td style="height: 22px;">
            </td>
            <td style="width: 158px; height: 22px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; height: 20px;">
                <asp:Label ID="Label5" runat="server" Text="Date of birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px; height: 20px;">
                <asp:TextBox ID="dob" runat="server" Height="25px" Width="160px"></asp:TextBox>
               </td>
            
            <td style="width: 119px; height: 20px;">
            </td>
            <td style="height: 20px;">
            </td>
            <td style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: 700;">
                Address</td>
            <td style="width: 116px">
                <asp:TextBox ID="add" runat="server"></asp:TextBox>
            </td>
            <td style="width: 119px">
                </td>
            <td>
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px">
                <asp:Label ID="Label7" runat="server" Text="District" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px">
                <asp:TextBox ID="dis" runat="server" Width="160px"></asp:TextBox></td>
            <td style="width: 119px">
            </td>
            <td>
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; height: 29px;">
                <asp:Label ID="Label8" runat="server" Text="State" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px; height: 29px;">
                <asp:TextBox ID="state" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Width="160px"></asp:TextBox></td>
            <td style="width: 119px; height: 29px;">
            </td>
            <td style="height: 29px;">
            </td>
            <td style="width: 158px; height: 29px;">
            </td>
        </tr>
        <tr>
            <td style="height: 20px;" colspan="4">
            </td>
            <td colspan="1" style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td colspan="1" style="width: 158px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
            </td>
            <td colspan="1" style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: 700;">
                Photo</td>
            <td style="width: 116px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: 700;">
                Document for Age proof</td>
            <td style="width: 116px">
                <asp:DropDownList ID="ddl1" runat="server">
                    <asp:ListItem>SSLC Marks Card</asp:ListItem>
                    <asp:ListItem>Birth Certificate</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: 700;" 
                valign="top">
                Document</td>
            <td style="width: 116px" valign="top">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td style="width: 119px">
                &nbsp;</td>
            <td valign="top">
            </td>
            <td style="width: 158px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 541px" align="center" valign="baseline">
                &nbsp;</td>
            <td style="width: 116px" align="center" valign="baseline">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" onclick="btnsubmit_Click" /></td>
            <td style="width: 119px" align="center" valign="baseline">
                <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" /></td>
            <td align="center" valign="baseline">
                &nbsp;</td>
            <td style="width: 158px" align="center" valign="baseline">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px">
                &nbsp;</td>
            <td style="width: 116px">
                &nbsp;</td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 158px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px">
                &nbsp;</td>
            <td style="width: 116px">
                &nbsp;</td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 158px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px">
                &nbsp;</td>
            <td style="width: 116px">
                &nbsp;</td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 158px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px">
                &nbsp;</td>
            <td style="width: 116px">
                &nbsp;</td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 158px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px; height: 26px">
                &nbsp;</td>
            <td style="width: 116px; height: 26px">
                &nbsp;</td>
            <td style="width: 119px; height: 26px">
                &nbsp;</td>
            <td style="height: 26px">
                &nbsp;</td>
            <td style="width: 158px; height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px; height: 11px">
                &nbsp;</td>
            <td style="width: 116px; height: 11px">
                &nbsp;</td>
            <td style="width: 119px; height: 11px">
                &nbsp;</td>
            <td style="height: 11px">
                &nbsp;</td>
            <td style="width: 158px; height: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px; height: 26px;">
                &nbsp;</td>
            <td style="width: 116px; height: 26px;">
                &nbsp;</td>
            <td style="width: 119px; height: 26px;">
                &nbsp;</td>
            <td style="height: 26px;">
                &nbsp;</td>
            <td style="width: 158px; height: 26px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px">
                &nbsp;</td>
            <td style="width: 116px">
                &nbsp;</td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 158px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px">
                &nbsp;</td>
            <td style="width: 116px">
                &nbsp;</td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 158px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px">
                &nbsp;</td>
            <td style="width: 116px">
                &nbsp;</td>
            <td style="width: 119px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 158px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 541px; height: 20px">
            </td>
            <td style="width: 116px; height: 20px">
            </td>
            <td style="width: 119px; height: 20px">
            </td>
            <td style="height: 20px">
            </td>
            <td style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 541px; height: 20px">
            </td>
            <td style="width: 116px; height: 20px">
                </td>
            <td style="width: 119px; height: 20px">
                </td>
            <td style="height: 20px">
                &nbsp;</td>
            <td style="width: 158px; height: 20px">
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;
    <br />
</asp:Content>

