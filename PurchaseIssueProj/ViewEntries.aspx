<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewEntries.aspx.cs" Inherits="PurchaseIssueProj.ViewEntries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        text-align: center;
    }
        .auto-style20 {
            text-align: justify;
            width: 1055px;
            margin-left: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style13">
                           <tr>
                               <td class="auto-style14"><asp:Label ID="Label4" runat="server" Text="Type:"></asp:Label></td>
                               <td>
                                   <asp:RadioButtonList ID="rdbtnType" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="PC">Purchase</asp:ListItem>
                                       <asp:ListItem Value="IS">Issue</asp:ListItem>
                                       <asp:ListItem Value="B">Both</asp:ListItem>
                                   </asp:RadioButtonList>                                  
                               </td>
                               <td class="auto-style14"></td>
                           </tr>
                           <tr>
                               <td class="auto-style15">
                                   <asp:Label ID="Label3" runat="server" Text="Vend/Dept:"></asp:Label>
                               </td>
                               <td class="auto-style19">
                                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                       <asp:ListItem Value="vend">Vendor</asp:ListItem>
                                       <asp:ListItem Value="dept">Department</asp:ListItem>
                                        <asp:ListItem Value="all">All</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="auto-style15"></td>
                           </tr>
                           <tr>
                               <td>
                                    <asp:Label ID="Label5" runat="server" Text="From Date:"></asp:Label>
                               </td>
                               <td class="auto-style19">
                                   <asp:TextBox ID="txtFrmdate" runat="server" ></asp:TextBox>
                               </td>
                               <td></td>
                           </tr>
                           <tr>
                               <td class="auto-style19">
                                   <asp:Label ID="Label6" runat="server" Text="To Date:"></asp:Label>
                                   :</td>
                               <td class="auto-style19">
                                   <asp:TextBox ID="txtToDate" runat="server" ></asp:TextBox>
                               </td>
                               <td class="auto-style19"></td>
                           </tr>
                           <tr>
                               <td class="auto-style19">
                                   &nbsp;</td>
                               <td class="auto-style19">
                                   <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" />
                               </td>
                               <td class="auto-style19">&nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style19">
                                   <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                               </td>
                               <td class="auto-style19">&nbsp;</td>
                           </tr>
                           </table>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <p>View Entries</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="auto-style20">
    <asp:GridView ID="GridView1" runat="server" Width="1053px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
    </div>
</asp:Content>