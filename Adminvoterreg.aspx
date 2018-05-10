<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminvoterreg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
<div style="overflow:scroll; width:530px; height: 282px;">
    &nbsp;
    
    <asp:GridView ID="GridView1" runat="server" 
        EmptyDataText="There are no data records to display." CellPadding="4" CellSpacing="3"
            AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowUpdating="GridView1_RowUpdating"  ForeColor="#333333" GridLines="None">


        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>

        
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="district" HeaderText="district" 
                SortExpression="district" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
        </Columns>
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    
    </div>

</asp:Content>

