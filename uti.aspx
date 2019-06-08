<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="uti.aspx.cs" Inherits="uti" %>

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
                                                <a href="#">Transactions</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item">UTI Pan Card </li>
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
                <h3 class="panel-title"> UTI Pancard Purchase Report


                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="pull-right"><i class="fa fa-filter"></i> Filter</asp:LinkButton>
               <!-- <a class="pull-right mybtn  waves-effect m-l-15" href="#" id="export"> <i class="fa fa-download"></i> Export</a>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="pull-right name"><i class="fa fa-plus"></i> New Request</asp:LinkButton>
         <a class="pull-right mybtn waves-effect" href="WebForm3.aspx" target="_blank"><i class="fa fa-plus"></i> Add New</a> --> </h3>

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
                
           
       <div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">  
       
       
         
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
        Width="900px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" Height="36px" >
    <Columns>
          <asp:TemplateField HeaderText="Order Details" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText=" Pan Id" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Tokens" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount">
             <ItemTemplate>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          </ItemTemplate>
          </asp:TemplateField>
         

          <asp:TemplateField HeaderText="profit" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
          <asp:TemplateField HeaderText="Remark" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Status" Visible="true">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
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

