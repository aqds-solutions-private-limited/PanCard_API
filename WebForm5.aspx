<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="PenCardApi_Solutions.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- BREADCRUMB-->
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
                                            <li class="list-inline-item">Setting &nbsp; / &nbsp; Change Your Password</li>
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
                <h3 class="panel-title">Change Password</h3>
            </div>
            <div class="panel-body p-b-0">
                <div class="row">
                 <div class="form-group col-md-12">
                    	<asp:Label ID="Label3" runat="server"><b>Old Password</b> </asp:Label>
                        <asp:TextBox runat="server" ID = "textbox1" CssClass="form-control" value="" placeholder = "Enter Value" TextMode= "Password" required></asp:TextBox>
                        
                    </div>
                    </div>
                    <div class="row">
                 <div class="form-group col-md-12">
                    	<asp:Label ID="Label1" runat="server"><b>New Password</b> </asp:Label>
                        <asp:TextBox runat="server" ID = "textbox2" CssClass="form-control" value="" placeholder = "Enter Value" TextMode= "Password" required></asp:TextBox>
                        
                    </div>
                    </div>
                    <div class="row">
                 <div class="form-group col-md-12">
                    	<asp:Label ID="Label2" runat="server"><b>Re-type Password</b> </asp:Label>
                        <asp:TextBox runat="server" ID = "textbox3" CssClass="form-control" value="" placeholder = "Enter Value" TextMode= "Password" required></asp:TextBox>
                        
                    </div>
                    </div>
                    <div class="row">
                 <div class="col-md-4  col-md-offset-4" >
       <asp:Label ID="Label4" runat="server"> </asp:Label>
       <br /><br />
    </div>
    </div>
    <div class="row">
                 <div class="col-md-4  col-md-offset-4" >
        <asp:Label runat = "server" 
            CssClass="btn btn-inverse bg-blue btn-lg btn-block" ID="Button2" 
            Text = "Update" onclick="Button1_Click" />
       <br /><br />
    </div>
    </div>

                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>


</asp:Content>
