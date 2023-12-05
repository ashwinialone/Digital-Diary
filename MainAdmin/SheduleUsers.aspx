<%@ Page Title="" Language="C#" MasterPageFile="~/MainAdmin/MainAdminMasterPage.master" AutoEventWireup="true" CodeFile="SheduleUsers.aspx.cs" Inherits="MainAdmin_SheduleUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table style="width:100%;">
        <tr class="tbl-header">
            <td class="inner-head">
                <asp:Image ID="Image2" runat="server" Height="20px" 
           ImageUrl="~/web_img/blinking.gif" Width="36px" />
                <asp:Label ID="Label1" runat="server"  Text="Schedule Report"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" Height="500px" ScrollBars="Both" 
                            Width="95%">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource_schedule" 
                        ForeColor="#333333" GridLines="None" Width="100%" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" Visible="False" />
                            <asp:BoundField DataField="meeting" HeaderText="meeting" 
                                SortExpression="meeting" />
                            <asp:BoundField DataField="address" HeaderText="address" 
                                SortExpression="address" />
                            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="username" HeaderText="username" 
                                SortExpression="username" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" 
                                Visible="False" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                                ShowEditButton="True" />

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
                    <asp:SqlDataSource ID="SqlDataSource_schedule" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DIGITAL_DIARYConnectionString %>" 
                        DeleteCommand="DELETE FROM [Schedule_Meeting] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [Schedule_Meeting] ([meeting], [address], [time], [date], [username], [status]) VALUES (@meeting, @address, @time, @date, @username, @status)" 
                        SelectCommand="SELECT * FROM [Schedule_Meeting]" 
                        UpdateCommand="UPDATE [Schedule_Meeting] SET [meeting] = @meeting, [address] = @address, [time] = @time, [date] = @date, [username] = @username, [status] = @status WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="meeting" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="time" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="meeting" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="time" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:TRAVEL_RECConnectionString %>" 
           
            
                    SelectCommand="SELECT [id], [pname], [duration], [location], [cost], [photo], [username] FROM [Packages] ORDER BY [cost]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

