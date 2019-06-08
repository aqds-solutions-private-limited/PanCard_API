<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="PenCardApi_Solutions.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         
   <div class="p-t-150">
<center>
<h2>Add Balance</h2>
<br />
<br />
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
    <td class="style9"><b style="font-size: large; font-weight: bolder">Add Amount</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
  </tr>

  <tr>
    <td class="style11"><b style="font-size: large; font-weight: bolder">Remark</b></td>
    <td class="style11" style="font-size: large; font-weight: bolder"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
  </tr>


   
  
       
  </table>
  </center>
   </div>


</asp:Content>
