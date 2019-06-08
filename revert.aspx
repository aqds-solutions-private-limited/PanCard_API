<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="revert.aspx.cs" Inherits="revert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
                .pos1
            {   position:absolute;
                left:596px;
                    top: 114px;
                    height: 539px;
                    width: 696px;
                }
    
                .style9
                {
                    height: 35px;
                }
                .style10
                {
                    height: 34px;
                }
                .style11
                {
                    height: 36px;
                }
                .style12
                {
                    height: 42px;
                }
                .style13
                {
                    height: 38px;
                }
    
                #form1
                {
                    height: 51px;
                    margin-top: 32px;
                    margin-bottom: 34px;
                }
                .newStyle1
                {
                    font-size: large;
                }
        
           tr:hover {background-color:#f5f5f5;}  
    
    
            th, td {
          padding: 8px;
          text-align: left;
          border-bottom: 1px solid #ddd;
        }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

<div class="p-t-150">
<center>
<h2>Revert Balance</h2>
<table id="table1"    
            
            style="border-color: #C0C0C0;  border-bottom: 1px solid #ddd; border-style: ridge none groove none; border-width: 1px medium 1px medium; width:78%; height: 108px; direction:ltr; margin-left: 61px; list-style-type: sha; "  >
   
  
  <tr class="">
    <td class="style13"> 
        <b style="font-size: large; text-transform: uppercase; font-weight: bolder; font-style: inherit;" 
            xml:lang="aa">Current Balance</b></td>
   <td class="style13" style="font-size: large; font-weight: bolder"><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></td>
  </tr> 
  <tr >
    <td class="style9"><b style="font-size: large; font-weight: bolder">Name</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder"><asp:Label ID="Label2" runat="server" Text=" "></asp:Label></td>
  </tr>

  <tr>
    <td class="style10"><b style="font-size: large; font-weight: bolder">Postal Address</b></td>
    <td class="style10" style="font-size: large; font-weight: bolder"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
  </tr>

  

  <tr>
    <td class="style9"><b style="font-size: large; font-weight: bolder">Mobile</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
  </tr>

  <tr>
    <td class="style13"><b style="font-weight: bolder; font-size: large">Email ID</b></td>
    <td class="style13" style="font-size: large; font-weight: bolder"><asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
  </tr>
  
  <tr>
    <td class="style9"><b style="font-size: large; font-weight: bolder">Revert Amount</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
  </tr>

   <tr>
    <td class="style9"><b style="font-size: large; font-weight: bolder">Transaction Password</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder">
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
    <td class="style11"><b style="font-size: large; font-weight: bolder">Remark</b></td>
    <td class="style11" style="font-size: large; font-weight: bolder">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
  </tr>      
  </table><br />
  <br />
  <br />
  <div class="col=lg-6  p-l-250 style11 " style="font-size: large; font-weight: bolder; float:left">
    <asp:CheckBox ID="CheckBox2" CssClass="style10" runat="server" Text="Credit"   
        oncheckedchanged="CheckBox1_CheckedChanged" />
</div>
<div class="col=lg-6 style11 p-r-250"  style="font-size: large; font-weight: bolder">
   <asp:Button ID="Button2" CssClass="style11" runat="server" Text="Submit" BackColor="blue" ForeColor="white" Width="90px" Height="50px" />
   </div>
  </center>
  
    </div>
  
</asp:Content>

