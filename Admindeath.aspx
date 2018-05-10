<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admindeath.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow:scroll; width:530px; height: 282px;">
    &nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="3"
        CellPadding="4" DataKeyNames="SlNo"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
         OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>

            <asp:BoundField DataField="SlNo" HeaderText="SlNo" ReadOnly="True" SortExpression="SlNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofdeath" HeaderText="Date of Death" SortExpression="dateofdeath" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofdeceased" HeaderText="Name of Deceased" SortExpression="nameofdeceased" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fathersorhusname" HeaderText="Father's or Husband name" SortExpression="fathersorhusname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placeofdeath" HeaderText="Place of Death" SortExpression="placeofdeath" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            
           
            <asp:BoundField DataField="nameoftownorvillage" HeaderText="Name of town or village"
                SortExpression="nameoftownorvillage" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            
             <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.PNG"
                EditImageUrl="~/images/busreport.PNG" HeaderText="Edit" ShowEditButton="True"
                UpdateImageUrl="~/images/save.PNG" SelectText="" />
            
            
            <asp:HyperLinkField AccessibleHeaderText="Generate" 
                NavigateUrl="~/printdeath.aspx" Text="Generate" />
           
           
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <EditRowStyle Wrap="True" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True"
         SelectCommand="SELECT [SlNo], [dateofdeath], [nameofdeceased], [fathersorhusname], [sex], [age], [placeofdeath], [nameoftownorvillage], [district], [state] FROM [death]"
         UpdateCommand="UPDATE [death] SET [dateofdeath] = @dateofdeath, [nameofdeceased] = @nameofdeceased, [fathersorhusname] = @fathersorhusname, [sex] = @sex, [age] = @age, [placeofdeath] = @placeofdeath, [nameoftownorvillage] = @nameoftownorvillage, [district] = @district, [state] = @state, WHERE [SlNo] = @SlNo">
        <InsertParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="dateofdeath" Type="String" />
            <asp:Parameter Name="nameofdeceased" Type="String" />
            <asp:Parameter Name="fathersorhusname" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="placeofdeath" Type="String" />
            
            <asp:Parameter Name="nameoftownorvillage" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
           
            
           
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="dateofdeath" Type="String" />
            <asp:Parameter Name="nameofdeceased" Type="String" />
            <asp:Parameter Name="fathersorhusname" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="placeofdeath" Type="String" />
            
            <asp:Parameter Name="nameoftownorvillage" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
           
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
        </DeleteParameters>
        
    </asp:SqlDataSource>

   
    </div>
</asp:Content>

