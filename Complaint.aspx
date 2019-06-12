<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Complaint.aspx.cs" Inherits="Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                                            <li class="list-inline-item">Add Member</li>
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
				<h3 class="panel-title">Personal Information</h3>
			</div>
		    <div class="panel-body p-b-0">
                <div class="row">
                   <div class="col-md-4">
                    	<asp:Label ID="Label3" runat="server"><b>Name</b> </asp:Label>
                        </div>
                        <div class="col-md-8">
                     <asp:TextBox runat="server" ID = "textbox1" CssClass="form-control" value="" placeholder = " name" required></asp:TextBox>
                        
                    </div>
                    <br /> <br />
                    <div class="col-md-4">
                    	<asp:Label ID="Label4" runat="server"><b>Mobile</b> </asp:Label>
                        </div>
                        <div class="col-md-8">
                          <asp:TextBox runat="server" ID = "textbox2" CssClass="form-control" value="" placeholder = "mobile no" required ></asp:TextBox>
                    <!--    <input type="text" name="mobile" required="" class="form-control" placeholder="Enter Value" pattern="[0-9]*" maxlength="10" minlength="10"> -->
                    </div>
                    <br /><br />
                    <div class="col-md-4">
                    
                    	<asp:Label ID="Label5" runat="server"><b>Email</b> </asp:Label>
                        </div>
                        <div class="col-md-8">
                          <asp:TextBox runat="server" ID = "textbox3" CssClass="form-control" value="" placeholder = "Enter email" ></asp:TextBox>
                    </div>
            <br /><br />
               
                    <div class="col-md-4">
                    	<asp:Label ID="Label7" runat="server"><b>Complaint Reason</b> </asp:Label>
                        </div>
                        <div class="col-md-8">
                        <asp:TextBox runat="server" ID = "textbox4" CssClass="form-control" value="" placeholder = "Reason" required></asp:TextBox>
                    </div>
                    <br /><br />

              <div class="col-md-4">
              	<asp:Label ID="Label8" runat="server"><b>Complaint</b> </asp:Label>
                </div>
                <div class="col-md-8">
                         <asp:TextBox runat="server" ID = "textbox5" CssClass="form-control" value="" placeholder = "complaint" required></asp:TextBox>
                   
                    </div>
                    <br /><br />
                    <div class="col-md-12">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
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

