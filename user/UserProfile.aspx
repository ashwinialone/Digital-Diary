<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="user_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<div class="tbl-header">
<div class="inner-head">

<asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
</div>
</div>
</br>
</br>
<div style="margin-left:30px">

    <asp:DetailsView ID="DetailsView1" runat="server" Width="688px" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" 
        DataSourceID="SqlDataProfile" ForeColor="#333333" GridLines="None" 
        BorderStyle="Solid" Height="250px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#DEE8F5" Height="30px" Width="50px" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" Height="30px" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="occupation" HeaderText="occupation" 
                SortExpression="occupation" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="qua" HeaderText="qua" 
                SortExpression="qua" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="photo" HeaderText="photo" 
                SortExpression="photo" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
                     <asp:SqlDataSource ID="SqlDataProfile" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DIGITAL_DIARYConnectionString %>" 
        DeleteCommand="DELETE FROM [Registration] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Registration] ([id], [name], [gender], [occupation], [address], [mobile], [qua], [email], [photo]) VALUES (@id, @name, @gender, @occupation, @address, @mobile, @qua, @email, @photo)" 
        SelectCommand="SELECT [id], [name], [gender], [occupation], [address], [mobile], [qua], [email], [photo] FROM [Registration] WHERE ([username] = @username)" 
        
        UpdateCommand="UPDATE [Registration] SET [name] = @name, [gender] = @gender, [occupation] = @occupation, [address] = @address, [mobile] = @mobile, [qua] = @qua, [email] = @email, [photo] = @photo WHERE [id] = @id">
                         <DeleteParameters>
                             <asp:Parameter Name="id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="id" Type="Int32" />
                             <asp:Parameter Name="name" Type="String" />
                             <asp:Parameter Name="gender" Type="String" />
                             <asp:Parameter Name="occupation" Type="String" />
                             <asp:Parameter Name="address" Type="String" />
                             <asp:Parameter Name="mobile" Type="String" />
                             <asp:Parameter Name="qua" Type="String" />
                             <asp:Parameter Name="email" Type="String" />
                             <asp:Parameter Name="photo" Type="String" />
                         </InsertParameters>
                         <SelectParameters>
                             <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="name" Type="String" />
                             <asp:Parameter Name="gender" Type="String" />
                             <asp:Parameter Name="occupation" Type="String" />
                             <asp:Parameter Name="address" Type="String" />
                             <asp:Parameter Name="mobile" Type="String" />
                             <asp:Parameter Name="qua" Type="String" />
                             <asp:Parameter Name="email" Type="String" />
                             <asp:Parameter Name="photo" Type="String" />
                             <asp:Parameter Name="id" Type="Int32" />
                         </UpdateParameters>
    </asp:SqlDataSource>
    </div>
                    
               
</div>
</asp:Content>

