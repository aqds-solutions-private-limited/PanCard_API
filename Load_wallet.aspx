<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Load_wallet.aspx.cs" Inherits="PenCardApi_Solutions.Load_wallet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.pos
{ position:absolute;
  right:-750px;
}
.pos1
{
    position:absolute;
    right:-300px;
   top:3px;
    height:40px;
   
}
.pos2
{
    position:absolute;
    top:150px;
}
.pos3 {
  max-width: 1000px;
} 
.align_center
{
    text-align:center;
}

</style>
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
                                            <li class="list-inline-item">Load Wallet</li>
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

            <!-- STATISTIC-->

            <section class="statistic">
                <div class="section__content section__content--p30">
                    <div class="container">
                       
          
                <div class="row">
            <div class="col-md-6 col-sm-6 col-lg-4" style="border-bottom-width:thin; background-color:White;   border-style:solid; border-color:Blue;">
            <div class="card-box widget-box-1 bg-white">
                <h4 class="text-dark ">0</h4>
                <h2 class="text-primary text-center">111111111111</h2>
                <p>IFSC : 0 <span class="pull-right">000000000</span></p>
            </div>
        </div>        </div>        </div>        
                </div>        </section>

           
            <div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">
  <div class="wrapper pos3">
    <div class="card card-1">
       <div class="row">
         <div class="col-md-12">
          <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Request History
                <div class="container-fluid">
                        <div class="header-wrap2">
       <div class="header-button2">
                                  <div class="header-button-item mr-0 js-sidebar-btn">
                                   <asp:Button ID="btn_newreq" runat="server" CssClass="form-control" Text="New Request" />
                                </div>
                                <div class="setting-menu js-right-sidebar d-none d-lg-block">
                                    <div class="account-dropdown__body">


                                    ////////////////////// PANEL1///////////////////////////////
                                    <asp:Panel ID="Panel1" runat="server" Visible="false" style="position:absolute;">
                                    <div class="panel-heading">
                                       <h3 class="panel-title">Personal Information</h3>
                                    </div>
                                  
                                    <div class="row">
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="labelp1" Text= "Amount"></asp:Label>
                                        <asp:TextBox runat="server" ID="textboxp1" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="labelp2" Text= "Date of Payment"></asp:Label>
                                        <asp:TextBox runat="server" ID="textboxp2" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    </div>
                                     <div class="row">
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="labelp3" Text= "Payment Mode"></asp:Label>
                                       <asp:DropDownList runat = "server" ID="DropDownListp1" CssClass="form-control">
                                       <asp:ListItem Text="Select Payment Mode" Value=""></asp:ListItem>
                                       <asp:ListItem Text="NEFT/RTGS" Value="NEFT/RTGS"></asp:ListItem>
                                       <asp:ListItem Text="IMPS" Value="IMPS"></asp:ListItem>
                                       <asp:ListItem Text="CASH" Value="CASH"></asp:ListItem>
                                       <asp:ListItem Text="NET BANKING" Value="NET_BANKING"></asp:ListItem>
                                       <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="labelp4" Text= "To Bank"></asp:Label>
                                       <asp:DropDownList runat = "server" ID="DropDownListp2" CssClass="form-control">
                                       <asp:ListItem Text="Select Bank" Value=""></asp:ListItem>
                                       <asp:ListItem Text="Punjab National Bank" Value="PNB"></asp:ListItem>
                                       <asp:ListItem Text="State Bank Of India" Value="SBI"></asp:ListItem>                                       
                                       <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                    </div>
                                     <div class="row">
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="labelp5" Text= "Bank Reference"></asp:Label>
                                        <asp:TextBox runat="server" ID="textboxp3" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="labelp6" Text= "Slip"></asp:Label>
                                        <asp:FileUpload ID="fileUploadp1" runat = "server" />
                                    </div>
                                    </div>
                                    <div class="row">
                                    <div class=" col-md-12 form-group">
                                    <asp:Label runat = "server" ID="labelp7" Text= "Remarks"></asp:Label>
                                    <asp:TextBox runat="server" ID="textboxp4" placeholder="Enter Your Remarks" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    </div>
                                    <div class="row">
                                     <div class="col-md-8  col-md-offset-4" >
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue  btn-block"  Width="200px"
                                             ID="Send" Text = "Send Request" />
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue btn-block" 
                                             ID="Close" Text = "Close" />
                                      </div>
                                     </div>

                                    </div>

                                    </asp:Panel>
                                         <div class="header-button-item mr-0 js-sidebar-btn">
                                   <asp:Button ID="Button3" runat="server" CssClass="form-control" Text="Request" />
                                </div>
                      

                                    <asp:Panel ID="Panel2" runat="server" Visible ="false">
                                     <div class="content">
                                                <p>Your account has been blocked</p>
                                                <span class="date">April 12, 2018 06:50</span>
                                            </div>
                                            <div class="col-lg-6">
                                             <asp:Label ID="Label2" runat="server" Text="Amount" ForeColor="Black" ></asp:Label>
                                             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                             </div>
                                                 <div class="col-sm-6">
                                             <asp:Label ID="Label3" runat="server" Text="Date of Payment"  ForeColor="Black"></asp:Label>
                                             <asp:TextBox ID="TextBox6" runat="server"  CssClass="form-control"></asp:TextBox>
                                          </div>
                                     </asp:Panel>
                                    <asp:Panel ID="Panel3" runat="server"></asp:Panel>
                                    <asp:Panel ID="Panel4" runat="server"></asp:Panel>                                     
                                    </div>
                                </div>
                                </div>
                                </div>                               </div>
             <!--   <asp:Button ID="Button2" runat="server" CssClass="form-control pull-right" Text="New Request" style=" width:130px; position:absolute; left:800px; top:3px;"/>   -->
                  <asp:LinkButton ID="LinkButton2" runat="server" CssClass="pull-right"><i class="fa fa-filter"></i> Filter</asp:LinkButton>
             
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="pull-right name"><i class="fa fa-plus"></i> New Request    &nbsp;   &nbsp;</asp:LinkButton>
           
             </h3>

         </div>
 </div>
</div>
 </div>
       

            <div class="container">
          
    <div class="row">
        <div class="col-sm-10">
            <div class="panel panel-primary">
            <div class="panel-body p-0">
              
              
                    <form class="row" id="filter" action="">
                      <!--  <div class="form-group col-md-3 m-b-0 hide">
                            <input type="text" name="from_date" placeholder="From Date" class="form-control date">
                        </div>
                        <div class="form-group col-md-3 m-b-0 hide">
                            <input type="text" name="to_date" placeholder="To Date" class="form-control date">
                        </div>
                        -->
                        <div class="form-group col-md-2 m-b-0 m-t-5 pull-right">   

                <asp:Button ID="Button1" BackColor="Blue" runat="server" Text="search"  CssClass="pos btn btn-inverse pull-right btn-sm waves-light waves-effect fa fa-search"  data-loading-text="class='fa fa-spin fa-spinner'"/>
                        

                        </div>
                        <div class="form-group col-md-3 m-b-0 pull-right"> 
                         
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Search Text" CssClass="pos1 form-control"></asp:TextBox>
                                                    </div>
                    </form>           
       <div class="page-wrapper bg-sky p-t-100 p-b-200  font-robo">       
       
         
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
        Width="900px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" Height="36px" >
    <Columns>
          <asp:TemplateField HeaderText="#"  HeaderStyle-CssClass="align_center" Visible="true" >
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" width="30"  runat="server"></asp:TextBox> 
            </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="pay Mode/ Wallet" HeaderStyle-CssClass="align_center" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Bank Details" HeaderStyle-CssClass="align_center" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount"  HeaderStyle-CssClass="align_center">
             <ItemTemplate>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          </ItemTemplate>
          </asp:TemplateField>
         

          <asp:TemplateField HeaderText="Remarks"  HeaderStyle-CssClass="align_center" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
         
          <asp:TemplateField HeaderText="Status"  HeaderStyle-CssClass="align_center" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
    </Columns>
</asp:GridView>
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
