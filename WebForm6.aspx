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
                                            <li class="list-inline-item">distributor </li>
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
                <h3 class="panel-title">Distributors List
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="pull-right"><i class="fa fa-filter"></i> Filter</asp:LinkButton>
               <!-- <a class="pull-right mybtn  waves-effect m-l-15" href="#" id="export"> <i class="fa fa-download"></i> Export</a> -->
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="pull-right name"><i class="fa fa-plus"></i> New Request</asp:LinkButton>
               <!-- <a class="pull-right mybtn waves-effect" href="WebForm3.aspx" target="_blank"><i class="fa fa-plus"></i> Add New</a></h3> -->

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
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"
        Width="900px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" Height="50px" 
                 CellPadding="4" ForeColor="#333333" GridLines="Horizontal">
                 <EditRowStyle BackColor="#2461BF" />
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle HorizontalAlign="Center" BackColor="#EFF3FB"/>
                 <AlternatingRowStyle BackColor="White" />
    <Columns>
          <asp:TemplateField HeaderText="Agent Id" Visible="true" ControlStyle-Width="50" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("id") %>' BackColor="White"  Height="30px" Enabled="false" ></asp:TextBox> 
            </ItemTemplate>

<ControlStyle Width="50px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="Personal Details" Visible="true" ControlStyle-Width="50" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("pd") %>' BackColor="White"  Height="30px" Enabled="false"></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="50px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Parent Details" Visible="true" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("map_under") %>' BackColor="White"  Height="30px" Enabled="false"></asp:TextBox>  
            </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
         

          <asp:TemplateField HeaderText="Wallet Balance" Visible="true" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="White"  Height="30px" Enabled="false"></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
          
         
          <asp:TemplateField HeaderText="id Stock" Visible="true" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" Enabled="false" runat="server"  BackColor="White"  Height="30px"></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Action" Visible="true" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%#"rupee.aspx?Agent id="+DataBinder.Eval(Container.DataItem,"id") %>'>Action</asp:HyperLink>   
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>



           <%-- <asp:ButtonField HeaderText="Action" Text="Action" CommandName="Action" />--%>

         
         
    </Columns>
    
                 <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />
                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                 <SortedDescendingCellStyle BackColor="#E9EBEF" />
                 <SortedDescendingHeaderStyle BackColor="#4870BE" />
    
</asp:GridView>
</center>
<%-- <div  style="left:750px; position:relative; background-color:#DCDCDC; border-color:Black; width:100;">
                 <asp:Panel ID="Action_dist" runat="server" CssClass="pos3" Visible="false" >
              <h5> payment menu</h5>
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click"><i class="fa fa-rupee">&nbsp;&nbsp;Fund Transfer/Return</i></asp:LinkButton><br />
                <h5>id stock</h5>
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%#Eval("id") %>' ><i class="fa fa-user-plus ">&nbsp;&nbsp;Add Id Stock</i></asp:LinkButton><br />
                    <h5>charges/commission</h5>
                    <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument='<%#Eval("id") %>' ><i class="fa fa-rupee">&nbsp;&nbsp;Pancard</i></asp:LinkButton><br />
                </asp:Panel>
         
         </div>--%>




      <%--    <div class="header-button-item mr-0 js-sidebar-btn">
                                    <i class="zmdi zmdi-menu"></i>
                                </div>
                                <div class="setting-menu js-right-sidebar d-none d-lg-block">
                                    <div class="account-dropdown__body">
                                         <asp:Panel ID="Panel2" runat="server" Visible ="false">
                                     
                                       <div class="panel-heading">
                                       <h3 class="panel-title">Fund Transfer/Return</h3>
                                    </div>
                                    <div class="panel-body p-b-0">
                                    <div class="row">
                                    <div class="form-group col-lg-6">

                                        <asp:Label runat = "server" ID="label" Text= "Action Type"></asp:Label>
                                        </div>
                                        <div class="col-lg-6">                                       
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>select Action Type</asp:ListItem>
                                            <asp:ListItem>transfer</asp:ListItem>
                                            <asp:ListItem>return</asp:ListItem>
                                            
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="labelp3" Text= "Amount"></asp:Label>
                                      
                                    </div>
                                    <div class="col-md-6 form-group">
                                       <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    </div>

                                    <div class="row">
                                    <div class="col-md-6 form-group">
                                        <asp:Label runat = "server" ID="label5" Text= "Remark"></asp:Label>
                                      
                                    </div>
                                    <div class="col-md-6 form-group">
                                       <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter value" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    </div>

                                    <div class="row">
                                     <div class="col-md-6  col-md-offset-4" >
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue  btn-block" 
                                             ID="Send" Text = "Fund Tansfer/Return"/>
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue btn-block" 
                                             ID="Close" Text = "Close" />
                                      </div>
                                     </div>

                                    </div>
                                  
                                           
                                     </asp:Panel>
                                    </div>
                                </div>--%>
</div>
  
     </div>
     </div>
     </div>
     </div>

     
               


     </div>
              
                </div>
                </div>

                <div>
              

           
                </div>
</asp:Content>
