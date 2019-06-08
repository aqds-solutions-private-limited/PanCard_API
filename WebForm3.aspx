<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="PenCardApi_Solutions.WebForm3" %>
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
                <h3 class="panel-title">Member Type & Mapping Details</h3>
            </div>
            <div class="panel-body p-b-0">
                <div class="row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="Label1" runat="server"><b>Member Type</b> </asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" 
                           onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                            AutoPostBack="True" >
                        <asp:ListItem  Text="Select Type" Value = ""></asp:ListItem>
                           <asp:ListItem Text ="Master Distributor" Value="Master_Distributor"></asp:ListItem>
                        <asp:ListItem Text ="Distributor" Value="Distributor"></asp:ListItem>
                        <asp:ListItem Text ="Retailer" Value = "Retailer"></asp:ListItem>
                        </asp:DropDownList>
                       
                    </div>

                    <div class="form-group col-md-4">
                       <asp:Label ID="Label2" runat="server"><b>Mapping Under</b> </asp:Label>
                       <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                        <asp:ListItem Selected Text="Select Mapping" Value = ""></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                 </div>
            </div>
        </div>
    </div>
                   

     <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
				<h3 class="panel-title">Personal Information</h3>
			</div>
		    <div class="panel-body p-b-0">
                <div class="row">
                    <div class="form-group col-md-4">
                    	<asp:Label ID="Label3" runat="server"><b>Name</b> </asp:Label>
                        <asp:TextBox runat="server" ID = "textbox1" CssClass="form-control" value="" placeholder = "Enter Value" required></asp:TextBox>
                        
                    </div>
                    <div class="form-group col-md-4">
                    	<asp:Label ID="Label4" runat="server"><b>Mobile</b> </asp:Label>
                          <asp:TextBox runat="server" ID = "textbox2" CssClass="form-control" value="" placeholder = "Enter Value" MaxLength="10" MinLength = "10" TextMode="Phone" required ></asp:TextBox>
                    <!--    <input type="text" name="mobile" required="" class="form-control" placeholder="Enter Value" pattern="[0-9]*" maxlength="10" minlength="10"> -->
                    </div>
                    <div class="form-group col-md-4">
                    	<asp:Label ID="Label5" runat="server"><b>Email</b> </asp:Label>
                          <asp:TextBox runat="server" ID = "textbox3" CssClass="form-control" value="" placeholder = "Enter Value" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                    	<asp:Label ID="Label6" runat="server"><b>State</b> </asp:Label>
                         <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" required>
                        <asp:ListItem Text="Select State" Value = ""></asp:ListItem>
                        <asp:ListItem Text ="ANDAMAN AND NICOBAR ISLANDS" Value="ANDAMAN AND NICOBAR ISLANDS"></asp:ListItem>
                        <asp:ListItem Text ="ANDHRA PRADESH" Value = "ANDHRA PRADESH"></asp:ListItem>
                        <asp:ListItem Text ="ARUNACHAL PRADESH" Value = "ARUNACHAL PRADESH"></asp:ListItem>
                        <asp:ListItem Text ="ASSAM" Value = "ASSAM"></asp:ListItem>
                        <asp:ListItem Text ="BIHAR" Value = "BIHAR"></asp:ListItem>
                        <asp:ListItem Text ="CHATTISGARH" Value = "CHATTISGARH"></asp:ListItem>
                        <asp:ListItem Text ="CHANDIGARH" Value = "CHANDIGARH"></asp:ListItem>
                        <asp:ListItem Text ="DAMAN AND DIU" Value = "DAMAN AND DIU"></asp:ListItem>
                        <asp:ListItem Text ="DELHI" Value = "DELHI"></asp:ListItem>
                        <asp:ListItem Text ="DADRA AND NAGAR HAVELI" Value = "DADRA AND NAGAR HAVELI"></asp:ListItem>
                        <asp:ListItem Text ="GOA" Value = "GOA"></asp:ListItem>
                        <asp:ListItem Text ="GUJARAT" Value = "GUJARAT"></asp:ListItem>
                        <asp:ListItem Text ="HIMACHAL PRADESH" Value = "HIMACHAL PRADESH"></asp:ListItem>
                        <asp:ListItem Text ="HARYANA" Value = "HARYANA"></asp:ListItem>
                        <asp:ListItem Text ="JAMMU AND KASHMIR" Value = "JAMMU AND KASHMIR"></asp:ListItem>
                        <asp:ListItem Text ="JHARKHAND" Value = "JHARKHAND"></asp:ListItem>
                        <asp:ListItem Text ="KERALA" Value = "KERALA"></asp:ListItem>
                        <asp:ListItem Text ="KARNATAKA" Value = "KARNATAKA"></asp:ListItem>
                        <asp:ListItem Text ="LAKSHADWEEP" Value = "LAKSHADWEEP"></asp:ListItem>
                        <asp:ListItem Text ="MEGHALAYA" Value = "MEGHALAYA"></asp:ListItem>
                        <asp:ListItem Text ="MAHARASHTRA" Value = "MAHARASHTRA"></asp:ListItem>
                        <asp:ListItem Text ="MANIPUR" Value = "MANIPUR"></asp:ListItem>
                        <asp:ListItem Text ="MADHYA PRADESH" Value = "MADHYA PRADESH"></asp:ListItem>
                        <asp:ListItem Text ="MIZORAM" Value = "MIZORAM"></asp:ListItem>
                        <asp:ListItem Text ="NAGALAND" Value = "NAGALAND"></asp:ListItem>
                        <asp:ListItem Text ="ORISSA" Value = "ORISSA"></asp:ListItem>
                        <asp:ListItem Text ="PUNJAB" Value = "PUNJAB"></asp:ListItem>
                        <asp:ListItem Text ="PONDICHERRY" Value = "PONDICHERRY"></asp:ListItem>
                        <asp:ListItem Text ="RAJASTHAN" Value = "RAJASTHAN"></asp:ListItem>
                        <asp:ListItem Text ="SIKKIM" Value = "SIKKIM"></asp:ListItem>
                        <asp:ListItem Text ="TAMIL NADU" Value = "TAMIL NADU"></asp:ListItem>
                        <asp:ListItem Text ="TRIPURA" Value = "TRIPURA"></asp:ListItem>
                        <asp:ListItem Text ="UTTARAKHAND" Value = "UTTARAKHAND"></asp:ListItem>
                        <asp:ListItem Text ="UTTAR PRADESH" Value = "UTTAR PRADESH"></asp:ListItem>
                        <asp:ListItem Text ="WEST BENGAL" Value = "WEST BENGAL"></asp:ListItem>
                        <asp:ListItem Text ="TELANGANA" Value = "TELANGANA"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                    	<asp:Label ID="Label7" runat="server"><b>City</b> </asp:Label>
                        <asp:TextBox runat="server" ID = "textbox4" CssClass="form-control" value="" placeholder = "Enter Value" required></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                    	<asp:Label ID="Label8" runat="server"><b>Pincode</b> </asp:Label>
                         <asp:TextBox runat="server" ID = "textbox5" CssClass="form-control" value="" placeholder = "Enter Value" MaxLength="6" Minlength="6" required></asp:TextBox>
                      <!--  <input type="text" name="pincode" class="form-control" value="" required="" maxlength="6" minlength="6" placeholder="Enter Value" pattern="[0-9]*"> -->
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                    	<asp:Label ID="Label9" runat="server"><b>Address</b> </asp:Label>
                         <asp:TextBox runat="server" ID = "textbox6" CssClass="form-control" value="" placeholder = "Enter Value" TextMode="MultiLine" required></asp:TextBox>
                    </div>
                </div>
		    </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Kyc Information</h3>
            </div>
            <div class="panel-body p-b-0">
                <div class="row">
                    <div class="form-group col-md-4">
                       <asp:Label ID="Label10" runat="server"><b>Aadhar Number</b> </asp:Label>
                        <asp:TextBox runat="server" ID = "textbox7" CssClass="form-control" value="" placeholder = "Enter Value"  MaxLength="12" Minlength="12" required></asp:TextBox>
                        <asp:FileUpload ID ="fileupload1" runat = "server"/>
                    </div>
                    <div class="form-group col-md-4">
                       <asp:Label ID="Label11" runat="server"><b>Pancard Number</b> </asp:Label>
                         <asp:TextBox runat="server" ID = "textbox8" CssClass="form-control" value="" placeholder = "Enter Value" required></asp:TextBox>
                         <asp:FileUpload ID ="fileupload2" runat = "server"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4  col-md-offset-4" >
        <asp:Button runat = "server" 
            CssClass="btn btn-inverse bg-blue btn-lg btn-block" ID="Submit" 
            Text = "Submit" onclick="Submit_Click" 
            />
        <br /><br />
    </div>
</div>
        </div>
        </div>
    </div>

</asp:Content>
