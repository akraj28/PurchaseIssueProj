<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"  CodeBehind="NewEntry.aspx.cs" Inherits="PurchaseIssueProj.NewEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
                       <table class="auto-style13">
                           <tr>
                               <td class="auto-style14"><asp:Label ID="Label4" runat="server" Text="Entry Type:"></asp:Label></td>
                               <td class="auto-style14">
                                   <asp:RadioButtonList ID="rdbtnType" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="PC">Purchase</asp:ListItem>
                                       <asp:ListItem Value="IS">Issue</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="auto-style14"></td>
                           </tr>
                           <tr>
                         
																									   
						 </td>
                               <td class="auto-style15">
                                   <asp:Label ID="Label3" runat="server" Text="Vend/Dept:"></asp:Label>
                               </td>
                               <td class="auto-style15">
                                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                       <asp:ListItem Value="vend">Vendor</asp:ListItem>
                                       <asp:ListItem Value="dept">Department</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                           </tr>
                           <tr>
                               <td>
                                   <asp:Label ID="lblVenDept" runat="server" Text="Vend/Dept:"></asp:Label>
                               </td>
                               <td>
                                   <asp:DropDownList ID="DropDownList2" runat="server">
                                   </asp:DropDownList>
                               </td>
                               <td></td>
                           </tr>
                           <tr>
                               <td class="auto-style19">
                                   <asp:Label ID="Label1" runat="server" Text="Gold:"></asp:Label>
                                   </td>
                               <td class="auto-style19">
                                   <asp:TextBox ID="txtGold" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGold" ErrorMessage="Enter Value" ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style19"></td>
                           </tr>
                           <tr>
                               <td class="auto-style19">
                                   <asp:Label ID="Label2" runat="server" Text="Diamond"></asp:Label>
                                   :</td>
                               <td class="auto-style19">
                                   <asp:TextBox ID="txtDia" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDia" ErrorMessage="Enter Value" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                               </td>
                               <td class="auto-style19">&nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style19">&nbsp;</td>
                               <td class="auto-style19">
                                   <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
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

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <p>New Entry</p>
</asp:Content>


