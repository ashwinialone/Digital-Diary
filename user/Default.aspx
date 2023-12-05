<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div class="tbl-header">
<div class="inner-head">

<asp:Label ID="Label1" runat="server" Text="Schedule of Meetings"></asp:Label>
</div>
</div>
</br>
</br>
<div>
<h3> Upcomming meetings</h3>
<hr color="orange" />
</br>
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical">
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id"
        ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" Visible="False" />
            <asp:BoundField DataField="meeting" HeaderText="Meeting" 
                SortExpression="meeting" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" Visible="False" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </asp:Panel>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DIGITAL_DIARYConnectionString %>" 
        DeleteCommand="DELETE FROM [Schedule_Meeting] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Schedule_Meeting] ([meeting], [address], [time], [date], [username]) VALUES (@meeting, @address, @time, @date, @username)" 
        SelectCommand="SELECT * FROM [Schedule_Meeting] WHERE ([username] = @username) ORDER BY [date] DESC" 
        UpdateCommand="UPDATE [Schedule_Meeting] SET [meeting] = @meeting, [address] = @address, [time] = @time, [date] = @date, [username] = @username WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="meeting" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="username" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="meeting" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="date" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </br>
<h3>Meetings Over</h3>
<hr color="orange" />
</br>
    <asp:Panel ID="Panel2" runat="server" ScrollBars="Vertical">
   
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id" 
        ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" Visible="False" />
            <asp:BoundField DataField="meeting" HeaderText="Meeting" 
                SortExpression="meeting" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" Visible="False" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </asp:Panel>
</div>

</div>
    </asp:Content>

