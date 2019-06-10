<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="fund_request.aspx.cs" Inherits="fund_request" %>

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
.pose3
{
    display:inline;

    
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
                                                <a href="#">Members</a>
                                            </li>
                                           
                                            <li class="list-inline-item">Distributor &nbsp; / &nbsp; Master Distributors</li>
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


             <div class="container">
          	
    <div class="row">
        <div class="col-sm-10">
            <div class="panel panel-primary">
            <div class="panel-body p-0">
                <div class="panel-heading">

					<h3 class="panel-title pull-left">
                                         Fund Request
                     List</h3>
                 
                    					<div class="clearfix"></div>
                </div>
               <div class="panel-body p-0"> 
                    <form class="row" id="filter" action="">
                        <div class="form-group col-md-3 m-b-0 hide">
                            <input type="text" name="from_date" placeholder="From Date" class="form-control date">
                        </div>
                        <div class="form-group col-md-3 m-b-0 hide">
                            <input type="text" name="to_date" placeholder="To Date" class="form-control date">
                        </div>
                       

         
                    </form>
                </div> 
             <div class="panel-body p-0"> 
         
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
        Width="800px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" >
    <Columns>
          <asp:TemplateField HeaderText="User detail" Visible="true" ControlStyle-CssClass="pose3" >
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </ItemTemplate>
          </asp:TemplateField>
        <asp:TemplateField HeaderText="parent Details" Visible="true" ControlStyle-CssClass="pose3">
            <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="payment Details" Visible="true">
            <ItemTemplate>
             <asp:Label ID="Label1" runat="server" Text='<%# Eval("pd") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
         
          

          <asp:TemplateField HeaderText="Amount" Visible="true" >
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
             </ItemTemplate>
            </asp:TemplateField>
         
         
          <asp:TemplateField HeaderText="Status" Visible="true">
            <ItemTemplate>
             <asp:Label ID="Label1" runat="server" Text='<%# Eval("status") %>'></asp:Label>
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
</asp:Content>



