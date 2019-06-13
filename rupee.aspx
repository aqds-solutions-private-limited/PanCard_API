<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="rupee.aspx.cs" Inherits="rupee" %>

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
  
<<div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">
  <div class="wrapper wrapper--w680">
    <div class="card card-1">
       <div class="row">
         <div class="col-md-12">
          <div class="panel panel-primary">
            <div class="panel-heading">
            <div class="panel-title"> 
                <h3 style="color:White">DMT WALLET TRANSFER</h3>
                </div></div>
                                    </div>
                                    </div>
                                    </div>
                                    
<table id="table1" style="border-color: #C0C0C0;  border-bottom: 1px solid #ddd; border-style: ridge none groove none; border-width: 1px medium 1px medium; width:78%; height: 108px; direction:ltr; margin-left: 61px; list-style-type: sha; "  >
   
  
  <tr class="">
    <td class="style13"> 
        <b style="font-size: large; font-weight: bolder">Agent Name</b></td>
   <td class="style13" style="font-size: large; font-weight: bolder"><asp:Label ID="Label1" runat="server" Text=" "></asp:Label></td>
  </tr> 
  <tr >
    <td class="style9"><b style="font-size: large; font-weight: bolder">Agent Id</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder"><asp:Label ID="Label2" runat="server" Text=" "></asp:Label></td>
  </tr>

  <tr>
    <td class="style10"><b style="font-size: large; font-weight: bolder">Current wallet 2 Balance</b></td>
    <td class="style10" style="font-size: large; font-weight: bolder"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
  </tr>

  

  <tr>
    <td class="style9"><b style="font-size: large; font-weight: bolder">Action</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
  </tr>

 
  
  <tr>
    <td class="style9"><b style="font-size: large; font-weight: bolder"> Amount</b></td>
    <td class="style9" style="font-size: large; font-weight: bolder"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
  </tr>

  <tr>
    <td class="style11"><b style="font-size: large; font-weight: bolder">Remark</b></td>
    <td class="style11" style="font-size: large; font-weight: bolder"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
  </tr>


   
  
       
  </table>
    <br />
  <br />
  <div class="col-lg-6  p-l-250 style11 " style="font-size: large; font-weight: bolder; float:left">
    <asp:CheckBox ID="CheckBox2" CssClass="style10" runat="server" Text="Credit"   
        oncheckedchanged="CheckBox1_CheckedChanged" />
</div>
<div class="col-lg-6 style11 p-r-250"  style="font-size: large; font-weight: bolder">
   <asp:Button ID="Button2" CssClass="style11" runat="server" Text="Submit" BackColor="blue" ForeColor="white" Width="90px" Height="50px" />

   </div>
   <br />
   <br />
   <b />
   <br />
   <br />
 

   </div>
   </div>
   </div>
</asp:Content>

