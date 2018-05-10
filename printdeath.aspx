<%@ Page Language="C#" AutoEventWireup="true" CodeFile="printdeath.aspx.cs" Inherits="printdeath" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
        function print_page() {
            window.print();
        }
    </script> 
    <style type="text/css">
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            text-align: justify;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 87%;
            height: 408px;
        }
        .style4
        {
            font-size: medium;
            width: 292px;
            text-align: right;
        }
        .style5
        {
            width: 292px;
            text-align: right;
            font-size: medium;
        }
        .style6
        {
            text-align: right;
            width: 219px;
        }
        .style7
        {
            width: 263px;
            font-size: small;
        }
        .style8
        {
            width: 219px;
            font-size: small;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            text-align: justify;
        }
        .style10
        {
            margin-left: 40px;
        }
        .style15
        {
            width: 292px;
            text-align: right;
            font-size: medium;
            height: 40px;
        }
        .style16
        {
            width: 263px;
            font-size: small;
            height: 40px;
        }
        .style17
        {
            width: 219px;
            font-size: small;
            height: 40px;
        }
        .style18
        {
            height: 40px;
        }
    </style>
</head>
<body style="height: 936px; width: 963px">
    <form id="form1" runat="server">
    <div class="style1" 
        style="border-style: groove; padding-left: 2px; padding-right: 2px">
    
        <p style="margin-left: 320px">
            <em><strong>DEATH CERTIFICATE</strong></em></p>
        <div class="tw-swapa">
            <div class="_wYb">
                <div id="tw-target-text-container" class="tw-compact-ta-container tw-hfl">
                    <pre id="tw-target-text" class="tw-data-text tw-ta tw-text-medium" 
                        data-fulltext="" data-placeholder="Translation" 
                        style="text-align: left; height: 36px; margin-left: 400px;"><span lang="kn">ಮರಣ ಪ್ರಮಾಣಪತ್ರ</span></pre>
                    <div style="left: 168.2px; top: 432.833px; font-size: 18.4px; font-family: sans-serif; transform: scaleX(0.910021);">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        (Issued Under Section 12/17 of the RBDAct, 1969 and Rule 8/13 of the KRBD Rules, 
                        1999)</div>
                    <pre class="style2" data-fulltext="" data-placeholder="Translation" 
                        style="height: 21px;">&nbsp;</pre>
                    <table class="style3">
                        <tr>
                            <td class="style4">
                                 Name:</td>
                            <td class="style7">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                            <td class="style6" style="font-size: medium">
                                Gender:</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" style="font-size: small"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Father/Husband Name:</td>
                            <td class="style7">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                            <td class="style6" style="font-size: medium">
                                Date of Death:</td>
                            <td>
                                <asp:Label ID="Label5" runat="server" style="font-size: small"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                Village/Town:</td>
                            <td class="style7">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                            <td class="style6" style="font-size: medium">
                                Place of Death :</td>
                            <td style="font-size: small">
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                Date:</td>
                            <td class="style16">
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                            <td class="style17">
                                </td>
                            <td class="style18">
                                </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                Place:</td>
                            <td class="style16">
                                Mysore</td>
                            <td class="style17">
                                </td>
                            <td class="style18">
                                <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/images/qr.jpg" 
                                    Width="80px" />
                                    
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Note:</td>
                            <td class="style7">
                                This is computer generated no need </td>
                            <td class="style8">
                                of any other signature or seal.</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        </table>
                    <pre class="style2" data-fulltext="" data-placeholder="Translation" 
                        style="height: 21px; width: 959px;"><span 
                        style="font-size: medium; font-family: 'Times New Roman', Times, serif">This is to certify that the fallowing information has been taken from the original record of birth which is the </span></pre>
                    <pre class="style2" data-fulltext="" data-placeholder="Translation" 
                        style="height: 21px; width: 952px;"><span 
                        style="font-size: medium; font-family: 'Times New Roman', Times, serif">register for the State Governament.</span></pre>
                    <pre class="style2" data-fulltext="" data-placeholder="Translation" 
                        style="height: 36px;">&nbsp;</pre>
                </div>
            </div>
        </div>
    
    </div>
    </form>
    <div>
        <p class="style10">
      <a href="#" onclick="javascript :print_page();" style="margin-left: 440px"><strong>
            <span class="style9">Click to Print</span></strong></a>
        </p>
      </div>
</body>
</html>

