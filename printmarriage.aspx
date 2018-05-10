<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printmarriage.aspx.cs" Inherits="printmarriage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function print_page() {
            window.print();
        }
    </script> 
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: 8514oem;
        }
        .style2
        {
            width: 100%;
            height: 333px;
            font-size: medium;
        }
        .style3
        {
            width: 231px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            text-align: right;
            font-weight: bold;
        }
        .style5
        {
            width: 224px;
            font-family: "Times New Roman", Times, serif;
            font-size: small;
        }
        .style6
        {
            width: 263px;
            font-size: medium;
        }
        .style7
        {
            width: 224px;
            font-family: "Times New Roman", Times, serif;
            text-align: right;
            font-weight: bold;
        }
        .style8
        {
            font-size: small;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body style="border-style: groove; padding-left: 2px; padding-right: 2px; height: 706px; width: 1039px;">
    <form id="form1" runat="server">
    <div class="style1">
    
        <p style="margin-left: 200px">
            CERTIFICATE OF MARRIAGE REGISTRATION</p>
        <p style="font-size: small; margin-left: 400px">
            (UNDER THE MARRIAGE ACT 1955)</p>
        <p style="font-size: small; margin-left: 400px">
            &nbsp;</p>
        <table class="style2">
            <tr>
                <td class="style3" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Name of Groom:</td>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" CssClass="style8"></asp:Label>
                </td>
                <td class="style7" 
                    style="font-family: 'Times New Roman', Times, serif; ">
                    Name of Bride:</td>
                <td>
                    <asp:Label ID="Label7" runat="server" CssClass="style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: medium">
                    Father of Groom:</td>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" CssClass="style8"></asp:Label>
                </td>
                <td class="style7">
                    Father of Bride:</td>
                <td>
                    <asp:Label ID="Label8" runat="server" CssClass="style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Address:</td>
                <td class="style6">
                    <asp:Label ID="Label3" runat="server" CssClass="style8"></asp:Label>
                </td>
                <td class="style7">
                    Address:</td>
                <td>
                    <asp:Label ID="Label9" runat="server" CssClass="style8"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Place of Marriage:</td>
                <td class="style6">
                    <asp:Label ID="Label4" runat="server" CssClass="style8"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Date of Marriage:</td>
                <td class="style6">
                    <asp:Label ID="Label5" runat="server" CssClass="style8"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Issue Date:</td>
                <td class="style6">
                    <asp:Label ID="Label6" runat="server" CssClass="style8"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/qr.jpg" Width="85px" />
    <br />
    <br />
    Note:This is a computer generated signature no need of other signature and seal.</form>

     <p class="style10">
      <a href="#" onclick="javascript :print_page();" style="margin-left: 440px"><strong>
            <span class="style9">Click to Print</span></strong></a>
        </p>
</body>
</html>
