<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="bank detailsnew.aspx.cs" Inherits="bank_detailsnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.pose
{ 
 left:5px;
}



 </style>
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
                                            <li class="list-inline-item">bank details</li>
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
				<h3 class="panel-title">BANK DETAILS</h3>
			</div>
            </div>
            </div>

   
           
           <div class="col-md-3" >
               &nbsp&nbsp<b> <asp:Label ID="Label1" runat="server" Text="AXIS" Font-Size="X-Large"></asp:Label> </b><br />
               &nbsp&nbsp   <asp:Label ID="Label2" runat="server" Text="A/c Name: Parween Bhardwaj" Font-Size="Medium"></asp:Label><br />
             &nbsp&nbsp      <asp:Label ID="Label3" runat="server" Text="A/c No: 916020004775681" Font-Size="Large"></asp:Label><br />
               &nbsp&nbsp     <asp:Label ID="Label4" runat="server" Text="IFSC Code:UTIB0000794" Font-Size="Large"></asp:Label><br />
                 &nbsp&nbsp    <asp:Label ID="Label5" runat="server" Text="Branch:Axis bank" Font-Size="Large"></asp:Label>
                    </div>
                    
                     <div class="col-md-3">
                         <asp:Image ID="Image1" runat="server"  ImageUrl="~/Profile/aadhar/download (2).jpg" />
                    
                </div>
               

                 <div class="col-md-3">
              <b> <asp:Label ID="Label6" runat="server" Text="BANDHAN BANK" Font-Size="X-Large"></asp:Label></b><br />
                 <asp:Label ID="Label7" runat="server" Text="A/c Name: ONLINE INDIA" Font-Size="Large"></asp:Label><br />
                  <asp:Label ID="Label8" runat="server" Text="A/c N0: 10180007090040" Font-Size="Large"></asp:Label><br />
                   <asp:Label ID="Label9" runat="server" Text="IFSC Code: BDBL0001729" Font-Size="Large"></asp:Label><br />
                    <asp:Label ID="Label10" runat="server" Text="GREATER NOIDA" Font-Size="Large"></asp:Label>
                    </div>
                    <div class="col-md-3">
                         <asp:Image ID="Image2" runat="server"  ImageUrl="~/Profile/pan_card/bandhan.jpg" />
                    
                </div>
                    </div><br /><br />
                     <div class="row">
                     <div class="col-md-3">
 &nbsp&nbsp <b><asp:Label ID="Label11" runat="server" Text="ICICI" Font-Size="X-Large"></asp:Label> </b><br />
                 &nbsp&nbsp <asp:Label ID="Label12" runat="server" Text="A/c Name: ICON INDIA" Font-Size="Large"></asp:Label><br />
                  &nbsp&nbsp <asp:Label ID="Label13" runat="server" Text="A/c No: 025405003797" Font-Size="Large"></asp:Label><br />
                  &nbsp&nbsp  <asp:Label ID="Label14" runat="server" Text="IFSC Code:ICIC0000254" Font-Size="Large"></asp:Label><br />
                   &nbsp&nbsp  <asp:Label ID="Label15" runat="server" Text="GREATER NOIDA" Font-Size="Large"></asp:Label>
                    </div>
                    <div class="col-md-3">
                         <asp:Image ID="Image3" runat="server"  ImageUrl="~/Profile/icici.jpg" />
                    
                </div>

                    <div class="col-md-3">
              <b>  <asp:Label ID="Label16" runat="server" Text="KOTAK MAHINDRA BANK" Font-Size="X-Large"></asp:Label> </b><br />
                 <asp:Label ID="Label17" runat="server" Text="A/c Name: ICON INDIA" Font-Size="Large"></asp:Label><br />
                  <asp:Label ID="Label18" runat="server" Text="A/c No: 1412914558" Font-Size="Large"></asp:Label><br />
                   <asp:Label ID="Label19" runat="server" Text="IFSC Code:KKBK0005028" Font-Size="Large"></asp:Label><br />
                    <asp:Label ID="Label20" runat="server" Text="Branch: KOTAK BANK" Font-Size="Large"></asp:Label>
                    </div>
                    <div class="col-md-3">
                         <asp:Image ID="Image4" runat="server"  ImageUrl="~/Profile/kotak.png" />
                    
                </div>
                    </div><br /><br />
                     <div class="row">
                      
                     <div class="col-md-3">
               &nbsp <b><asp:Label ID="Label21" runat="server" Text="STATE BANK OF INDIA" Font-Size="X-Large"></asp:Label></b><br />
                &nbsp&nbsp  <asp:Label ID="Label22" runat="server" Text="A/c Name: M/S PERFEX" Font-Size="Medium"></asp:Label><br />
                  &nbsp&nbsp <asp:Label ID="Label23" runat="server" Text="A/c No: 37955331160" Font-Size="Large"></asp:Label><br />
                  &nbsp&nbsp  <asp:Label ID="Label24" runat="server" Text="IFSC Code:SBIN0011475" Font-Size="Large"></asp:Label><br />
                   &nbsp&nbsp  <asp:Label ID="Label25" runat="server" Text="Branch:SBI" Font-Size="Large"></asp:Label>
                    </div>
                     <div class="col-md-3">
                         <asp:Image ID="Image5" runat="server"  ImageUrl="~/Profile/sbi2.png" />
                         </div>

                          <div class="col-md-3">
               <b><asp:Label ID="Label26" runat="server" Text="PAYTM" Font-Size="X-Large"></asp:Label></b><br />
             
                    </div>
                     <div class="col-md-3">
                         <asp:Image ID="Image6" runat="server"  ImageUrl="" />
                         </div>
                    
                </div>
                 
                    
                    

                    
                </div>
                
                

                    
         
                </div>
                </div>
            
           
                
         </asp:Content>
             
                
              
                        
                      
                        

