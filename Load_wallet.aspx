<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Load_wallet.aspx.cs" Inherits="Load_wallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
.align
{
    position:absolute;
    left:800px;
    top:-1px
}
.pos4
{
    position:absolute;
    top:50px;
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


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
          <div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">
  <div class="wrapper wrapper--w680">
    <div class="card card-1">
       <div class="row">
         <div class="col-md-12">
          <div class="panel panel-primary">
            <div class="panel-heading">
                  <h3 class="panel-title">Request History
                 <asp:LinkButton ID="LinkButton4" runat="server" CssClass="pull-right"><i class="fa fa-filter"></i> Filter</asp:LinkButton>
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
              <div class="container-fluid">
                        <div class="header-wrap2">
       <div class="header-button2">
                                  <div class="header-button-item mr-0 js-sidebar-btn ">
                                   <asp:Button ID="btn_newreq" runat="server" Font-Bold="true" ForeColor="White" style="top:-75px; right:10px; width:120px; height:40px; background-color:inherit; position:absolute;"
                                       
                                          Text="New Request" onclick="btn_newreq_Click1" />
                                </div>
                                <div class="setting-menu js-right-sidebar d-none d-lg-block">
                                    <div class="account-dropdown__body">

                                    <!----------------PANEL 1--------------------->
                                   
                                    <asp:Panel ID="Panel1" runat="server"  Visible="true" style=" position:absolute; z-index:1500;">
                                    <div class="panel-heading bg-blue">
                                      <div  class="panel-title">
                                      
                                     <h3  style="color:White">  Personal Information</h3>
                                     </div>
                                    </div>
                                    <br />
                                  
                                    <div class="row">
                                    <div class="col-md-6 form-group">
                                     <b><asp:Label runat = "server" style="color:black;"  ID="labelp1" Text= "Amount"></asp:Label></b>   
                                        <asp:TextBox runat="server" ID="textboxp1" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6 form-group">
                                  <b><asp:Label runat = "server" ID="labelp2" style="color:black;" Text= "Date of Payment"></asp:Label></b>      
                                        <asp:TextBox runat="server" ID="textboxp2" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    </div>
                                     <div class="row">
                                    <div class="col-md-6 form-group">
                                       <b> <asp:Label runat = "server" ID="labelp3" style="color:black;"  Text= "Payment Mode"></asp:Label></b>
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
                                       <b> <asp:Label runat = "server" ID="labelp4" style="color:black;" Text= "To Bank"></asp:Label></b>
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
                                      <b>  <asp:Label runat = "server" ID="labelp5" style="color:black;"  Text= "Bank Reference"></asp:Label></b>
                                        <asp:TextBox runat="server" ID="textboxp3" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6 form-group">
                                      <b>  <asp:Label runat = "server" style="color:black;" ID="labelp6" Text= "Slip"></asp:Label></b>
                                        <asp:FileUpload ID="fileUploadp1" runat = "server" />
                                    </div>
                                    </div>
                                    <div class="row">
                                    <div class=" col-md-12 form-group">
                                 <b>   <asp:Label runat = "server" ID="labelp7" style="color:black;"  Text= "Remarks"></asp:Label></b>
                                    <asp:TextBox runat="server" ID="textboxp4" placeholder="Enter Your Remarks" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    </div>
                                    <div class="row">
                                      <div class="col-md-6 form-group">
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue  btn-block" Width="130px" style="margin-left:10px;"
                                             ID="Send" Text = "Send Request" />
                                             </div>
                                                <div class="col-md-6 form-group">
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue btn-block" Width="130px" 
                                             ID="Close" Text = "Close" />
                                      </div>
                                     </div>
                                       </asp:Panel>


                                       <!----------------PANEL 1 END--------------------->
                                    </div>                               
                                    </div>
                                </div>
                                </div>
                                </div>
                    <form class="row" id="Form1" action="">
                        <div class="form-group col-md-2 m-b-0 m-t-5 pull-right">   

             <asp:Button ID="Button2" BackColor="Blue" runat="server" Text="search"  CssClass="pos btn btn-inverse pull-right btn-sm waves-light waves-effect fa fa-search"  data-loading-text="class='fa fa-spin fa-spinner'"/>-
                        

                        </div>
                        <div class="form-group col-md-3 m-b-0 pull-right"> 
                         
                            <asp:TextBox ID="TextBox7" runat="server" placeholder="Search Text" CssClass="pos1 form-control"></asp:TextBox>
                                                    </div>
                    </form>    
       <div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">  
       
       
         <center>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"  
        Width="824px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" Height="36px" >
         
    <Columns>
    
          <asp:TemplateField HeaderText="#" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="pay Mode/ Wallet" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Bank Details" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount">
             <ItemTemplate>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          </ItemTemplate>
          </asp:TemplateField>
         

          <asp:TemplateField HeaderText="Remarks" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
         
          <asp:TemplateField HeaderText="Status" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
 </Columns>
    
</asp:GridView>
</center>
</div>
  
     </div>
     </div>
     </div>
     
     </div>              
                </div>
                </div>
                </div>               </div></asp:Content>

