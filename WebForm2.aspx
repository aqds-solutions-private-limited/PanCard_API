<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PenCardApi_Solutions.WebForm2" %>
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
                                            <li class="list-inline-item">Dashboard</li>
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
 <section class="statistic">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">1</h2>
                                    <span class="desc"> <b>Total Distributors</b> </span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">1</h2>
                                    <span class="desc"><b> Total Retailers</b>  </span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">1</h2>
                                    <span class="desc"><b>This week</b> </span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-calendar-note"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">1</h2>
                                    <span class="desc"><b>This month</b> </span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-money"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                  <div class="page-wrapper bg-sky p-t-40 p-b-100 font-robo">  
       
       
         
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
        Width="1010px" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" Height="36px"  HorizontalAlign="Center">
         
    <Columns>
         <asp:TemplateField HeaderText="sr. no"  ControlStyle-Width="25" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
            <%#Container.DataItemIndex+1 %>
               <!-- <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Mobile") %>'></asp:TextBox> -->
            </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="Agent id" ControlStyle-Width="70" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Agent id") %>'></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Agent Name" ControlStyle-Width="70" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Agent Name") %>'></asp:TextBox>  
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" >
             <ItemTemplate>
          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Mobile") %>'></asp:TextBox>
          </ItemTemplate>
         
          </asp:TemplateField>
         

          <asp:TemplateField HeaderText="State" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("state") %>'>></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
          <asp:TemplateField HeaderText="Join Date" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("Mobile") %>'>></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Email Id" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("Email Id") %>'>></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
         <asp:TemplateField HeaderText="Fos" ControlStyle-Width="70 " HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox8"  runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
         <asp:TemplateField HeaderText="Balance" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox9"  runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
           <asp:TemplateField HeaderText="Login" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
          
           <asp:TemplateField HeaderText="Action"  Visible="true" HeaderStyle-CssClass="align_center" >
            <ItemTemplate>
            &nbsp; 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"add_balance.aspx?Agent id="+DataBinder.Eval(Container.DataItem,"Agent id") %>'><i class="fa fa-plus" style="color:Orange"></i></asp:HyperLink>
           &nbsp; &nbsp;  <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%#"revert.aspx?Agent id="+DataBinder.Eval(Container.DataItem,"Agent id") %>'><i class="fa fa-minus" style="color:Orange"></i></asp:HyperLink>
             &nbsp; &nbsp;  
              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#"rupee.aspx?Agent id="+DataBinder.Eval(Container.DataItem,"Agent id") %>'><i class="fa fa-inr " style="color:Blue"></i></asp:HyperLink>
        
             </ItemTemplate>
            
            </asp:TemplateField>
         
         
    </Columns>
</asp:GridView>
</div>
            </section>
            <!-- END STATISTIC-->
            




</asp:Content>
