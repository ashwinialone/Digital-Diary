<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="AddSchedule.aspx.cs" Inherits="user_AddSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<div class="tbl-header">
<div class="inner-head">

<asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
</div>
</div>
</br>
</br>
<div style="float:left">
    <table bgcolor="White" class="tbl-style">
        
        <tr>
            <td align="left" class="style4">
                Meeting</td>
            <td align="left">
                <asp:DropDownList ID="ddlMeeting" runat="server">
                    <asp:ListItem>Select Meeting Type</asp:ListItem>
                    <asp:ListItem>Birthday</asp:ListItem>
                    <asp:ListItem>Conference</asp:ListItem>
                </asp:DropDownList>
                
            </td>
        </tr>
      
        <tr>
            <td align="left" class="style4">
                Address</td>
            <td align="left">
                <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtadd" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
              Time</td>
            <td align="left" class="style1">
                 <asp:TextBox ID="txttime" runat="server" Width="200px" placeholder="eg.10:00Pm" 
                     TextMode="Time"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txttime" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                 </td>
        </tr>
        <tr>
            <td align="left" class="style4">
               Date</td>
            <td align="left" class="style1">
                 <asp:TextBox ID="txtdate" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdate" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                
                 
                 </td>
        </tr>
        <tr>
            <td align="left" class="style4">
            </td>
            <td align="left" class="style1">
                <asp:Button ID="btnsubmit" runat="server"  onclick="btnsubmit_Click" 
                    Text="Submit" class="btn-style hvr-shrink" />
            </td>
           

        </tr>
   
        <tr>
            <td align="left" class="style4">
                &nbsp;</td>
            <td align="left" class="style1">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#339933"></asp:Label>
                
            </td>
        </tr>
    </table>
    </div>
       
<div style="clear:both">
</br>
<hr color="orange" />
</div>


</div>

</asp:Content>

