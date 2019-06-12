<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="add_balance.aspx.cs" Inherits="add_balance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
                .pos1
            {   position:absolute;
                left:596px;<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="add_balance.aspx.cs" Inherits="PenCardApi_Solutions.add_balance" %>
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


    <asp:ScriptManager ID="ScriptManager1" runat="server">
      
     
    </asp:ScriptManager>
<!-- BREADCRUMB-->
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <Triggers>
    
    
    </Triggers>
   <ContentTemplate>
   
            <section class="au-breadcrumb m-t-75">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="au-breadcrumb-content">
                                    <div class="au-breadcrumb-left">
                                        <span class="au-breadcrumb-span">You are here:</span>
                                        <ul class="list-unstyled list-inline au-breadcrumb__list">
                                            <li class="list-inline-item active">
                                                <a href="#">Home</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">Dashboard / Add Balance</li>
                                        </ul>
                                    </div>
                                  <!--  <button class="au-btn au-btn-icon au-btn--green">
                                        <i class="zmdi zmdi-plus"></i>add item</button> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->

            <div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
              
                
                <div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Add Balance</h3>
            </div>
         


      
   <div class="p-t-150  form-group">
<center>


<table id="table1"  style="border-color: #C0C0C0;  border-bottom: 1px solid #ddd; border-style: ridge none groove none; border-width: 1px medium 1px medium; width:78%; height: 108px; direction:ltr; margin-left: 61px; list-style-type: sha; "  >
   
  
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
    <td class="style9" style="font-size: large; font-weight: bolder">
        <asp:TextBox ID="TextBox2" runat="server" CssClass= "form-control"></asp:TextBox></td>
  </tr>

  <tr>
    <td class="style11"><b style="font-size: large; font-weight: bolder">Remark</b></td>
    <td class="style11" style="font-size: large; font-weight: bolder">
        <asp:TextBox ID="TextBox1" runat="server" CssClass= "form-control"></asp:TextBox></td>
  </tr>


   
  
      
  </table>
  <br />
  <br />
  <div class="col=lg-6  p-l-250 style11 " style="font-size: large; font-weight: bolder; float:left">
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Credit"   
        oncheckedchanged="CheckBox1_CheckedChanged" />
</div>
<div class="col lg-6  p-r-250"  style="font-size: large; font-weight: bolder;">
   <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="blue" 
        ForeColor="white" Width="90px" Height="50px" onclick="Button1_Click" />
   </div>
 

  </center>
   </div>
   </div>
   </div>
   </div>
   </div>
   </div>
   </div>
  



  <!------------OTP PANEL-------------------->
  <asp:Panel ID="Panel_otp" runat="server" style="height:150px; width:350px; background-color:White; position:relative; bottom:400px; margin-left:300px;" visible="false">
    
              
                
                <div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">OTP Confirmation</h3>
            </div>
            <br />
            <br />

            <div class="row">
            <div class="col-md-6">
            <asp:Label ID="otp" runat="server" Text="OTP" CssClass="newStyle1" style=" padding-left:50px;"></asp:Label>
            &nbsp; &nbsp;
            <asp:Label ID="Label4" runat="server" Text=":" CssClass="newStyle1" style=" padding-left:50px;"></asp:Label>
            </div>
            <div class="col-md-5">
            <asp:TextBox ID="TextBox3" runat="server" CssClass= "form-control"></asp:TextBox>
            </div>
            </div>

            <br />

             <div class="row">
            <div class="col-md-6  p-r-250"  style="padding-left:70px; background-color:Red;">
                 <asp:Button ID="Proceed" runat="server" Text="Submit" BackColor="blue" ForeColor="white" Width="90px" Height="50px" CssClass="float-l" onclick="Proceed_Click" />
                 
            </div>
            <div class="col-md-6"  style="font-size: large; font-weight: bolder; padding-left:200px;">
                 <asp:Button ID="Close" runat="server" Text="Close" BackColor="blue" ForeColor="white" Width="90px" Height="50px" onclick="Close_Click" />
            </div>
            </div>

             <br />

                   <asp:Label ID="Label7" runat="server" CssClass="newStyle1" style=" padding-left:50px;"></asp:Label>      
            </div>
            </div>
            </div>
          </asp:Panel>
          </ContentTemplate>
         </asp:UpdatePanel>
   
</asp:Content>

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
    <td class="style9" style="font-size: large; font-weight: bolder">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
    <td class="style11"><b style="font-size: large; font-weight: bolder">Remark</b></td>
    <td class="style11" style="font-size: large; font-weight: bolder">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
  </tr>


   
  
       
  </table>
  <br />
  <br />
  <div class="col=lg-6  p-l-250 style11 " style="font-size: large; font-weight: bolder; float:left">
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Credit"   
        oncheckedchanged="CheckBox1_CheckedChanged" />
</div>
<div class="col=lg-6 style11 p-r-250"  style="font-size: large; font-weight: bolder">
   <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="blue" 
        ForeColor="white" Width="90px" Height="50px" onclick="Button1_Click" />
   </div>
  </center>
   </div>

 
</asp:Content>

