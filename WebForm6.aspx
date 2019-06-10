<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="PenCardApi_Solutions.WebForm6" %>
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
.pose3
{
    text-align:center
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
                                                <a href="#">Members</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">Distributor</li>
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

<%--            
<div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">
  <div class="wrapper wrapper--w680">
    <div class="card card-1">
--%>       <div class="row">
         <div class="col-md-12">
          <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Distributor List
                <a class="pull-right mybtn  waves-effect m-l-15" href="#" id="export"> <i class="fa fa-download"></i> Export</a>
                <a class="pull-right mybtn waves-effect" href="WebForm3.aspx" target="_blank"><i class="fa fa-plus"></i> Add New</a></h3>

            </div>
             </div>
</div>
 </div>
       

            <div class="container">
          	
    <div class="row">
        <div class="col-sm-10">
         
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
                
 
           
       <div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">  
       
       
         <center>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellSpacing="20"
         Width="900px" 
        Height="280px" >
        <RowStyle HorizontalAlign="Center" />
    <Columns>
          <asp:TemplateField HeaderText="Agent Id" Visible="true" HeaderStyle-CssClass="pose3">
            <ItemTemplate>
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="Personal Details" Visible="true" HeaderStyle-CssClass="pose3">
            <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pd") %>'></asp:Label>
             </ItemTemplate>
            </asp:TemplateField>
            
          <asp:TemplateField HeaderText="Wallet Balance" Visible="true" HeaderStyle-CssClass="pose3">
            <ItemTemplate>
     
             </ItemTemplate>
            </asp:TemplateField>
         
         
          <asp:TemplateField HeaderText="id Stock" Visible="true" HeaderStyle-CssClass="pose3">
            <ItemTemplate>
        
             </ItemTemplate>
            </asp:TemplateField>

            
           <asp:TemplateField HeaderText="Action" Visible="true" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" >
            <ItemTemplate>
                <asp:Panel ID="Panel1" runat="server" CssClass="pos3">
              <h5> payment menu</h5>
                    <asp:LinkButton ID="LinkButton3" runat="server"><i class="fa fa-rupee">Fund Transfer/Return</i></asp:LinkButton>
                <h5>id stock</h5>
                    <asp:LinkButton ID="LinkButton4" runat="server"><i class="fa fa-user-plus ">Add Id Stock</i></asp:LinkButton>
                    <h5>charges/commission</h5>
                    <asp:LinkButton ID="LinkButton5" runat="server"><i class="fa fa-rupee">Pancard</i></asp:LinkButton>
                </asp:Panel>
        
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
</asp:Content>
