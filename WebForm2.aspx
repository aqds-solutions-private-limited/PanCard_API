<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PenCardApi_Solutions.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  


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
       
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        Width="950px" CssClass="left-margin" 
         onselectedindexchanged="GridView1_SelectedIndexChanged" Height="36px"  
                          HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" 
                          GridLines="Horizontal">
      
                 <AlternatingRowStyle BackColor="White" />
      
    <Columns>

          <asp:TemplateField HeaderText="sr. no"  ControlStyle-Width="25" HeaderStyle-CssClass="align_center" ControlStyle-BackColor="White" >
            <ItemTemplate>
            <%#Container.DataItemIndex+1 %>
               <!-- <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Mobile") %>'></asp:TextBox> -->
            </ItemTemplate>

<ControlStyle Width="25px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="Agent id" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Agent id") %>' BackColor="White" Enabled="false" Height="30px" ></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Agent Name" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" HeaderStyle-Height="30px">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Agent Name") %>' BackColor="White"  Enabled="false" Height="30px"></asp:TextBox>  
            </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile" ControlStyle-Width="70" HeaderStyle-CssClass="align_center" >
             <ItemTemplate> 
          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Mobile") %>'  Enabled="false" BackColor="White"  Height="30px"></asp:TextBox>
          </ItemTemplate>
         
<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
         
          </asp:TemplateField>
         

          <asp:TemplateField HeaderText="State" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("state") %>'  Enabled="false" BackColor="White" Height="30px"></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
         
          <asp:TemplateField HeaderText="Join Date" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("Mobile") %>'  Enabled="false" BackColor="White" Height="30px"></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Email Id" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("Email Id") %>'  BackColor="White" Enabled="false" ></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
         
         <asp:TemplateField HeaderText="Fos" ControlStyle-Width="70 " HeaderStyle-CssClass="align_center">
            <ItemTemplate>
               <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White">
                
               
               
               </asp:DropDownList>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
         
         <asp:TemplateField HeaderText="Balance" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox9"  runat="server" Enabled="false" BackColor="White"></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
         
           <asp:TemplateField HeaderText="Login" ControlStyle-Width="70" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox10" runat="server" Enabled="false" BackColor="White"></asp:TextBox>
             </ItemTemplate>

<ControlStyle Width="70px"></ControlStyle>

<HeaderStyle CssClass="align_center"></HeaderStyle>
            </asp:TemplateField>
          
           <asp:TemplateField HeaderText="Action"  Visible="true" HeaderStyle-CssClass="align_center" >
            <ItemTemplate>
            &nbsp; 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"add_balance.aspx?Agent id="+DataBinder.Eval(Container.DataItem,"Agent id") %>'><i class="fa fa-plus" style="color:Orange"></i></asp:HyperLink>
           &nbsp; &nbsp;  <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%#"revert.aspx?Agent id="+DataBinder.Eval(Container.DataItem,"Agent id") %>'><i class="fa fa-minus" style="color:Orange"></i></asp:HyperLink>
             &nbsp; &nbsp;  
              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#"rupee.aspx?Agent id="+DataBinder.Eval(Container.DataItem,"Agent id") %>'><i class="fa fa-inr " style="color:Blue"></i></asp:HyperLink>
        
             </ItemTemplate>
            
<HeaderStyle CssClass="align_center"></HeaderStyle>
            
            </asp:TemplateField>
         
         
    </Columns>
                 <EditRowStyle BackColor="#2461BF" />
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EFF3FB" />
                 <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />
                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                 <SortedDescendingCellStyle BackColor="#E9EBEF" />
                 <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>

<asp:Panel ID="Panel1" runat="server">
  <div class="section__content section__content--p30 p-t-200">
                    <div class="container-fluid">
                        <div class="row">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                            <div class="col-md-6 col-lg-3">
                                <div class="statistic__item">
                                    <h2 class="number">1</h2> <br />
                                    <span class="desc"> <b>Wallet Balance</b> </span>
                                    <div class="icon">
                                        <i class="zmdi zmdi-account-o"></i>
                                    </div>
                                </div>
                            </div>
                  
                        </div>
                    </div>
                </div>



                <center>
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        Width="824px" 
         onselectedindexchanged="GridView2_SelectedIndexChanged" Height="36px" CellPadding="4" 
                        ForeColor="#333333" GridLines="Horizontal">
                 <AlternatingRowStyle BackColor="White" />
    <Columns>
          <asp:TemplateField HeaderText="#" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="false" Height="40px" BackColor="White"></asp:TextBox> 
            </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="User Details" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="false" Height="40px" BackColor="White"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Parent Details" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="false" Height="40px" BackColor="White"></asp:TextBox>  
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount" HeaderStyle-CssClass="align_center" >
             <ItemTemplate>
          <asp:TextBox ID="TextBox1" runat="server" Enabled="false" Height="40px" BackColor="White"></asp:TextBox>
          </ItemTemplate>
          </asp:TemplateField>
         

          <asp:TemplateField HeaderText="Status" Visible="true" HeaderStyle-CssClass="align_center">
            <ItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="false" Height="40px" BackColor="White"></asp:TextBox>
             </ItemTemplate>
            </asp:TemplateField>
         
         
         
    </Columns>

                 <EditRowStyle BackColor="#7C6F57" />
                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#E3EAEB" />
                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F8FAFA" />
                 <SortedAscendingHeaderStyle BackColor="#246B61" />
                 <SortedDescendingCellStyle BackColor="#D4DFE1" />
                 <SortedDescendingHeaderStyle BackColor="#15524A" />

</asp:GridView>
</center> 
</asp:Panel>
</div>
            </section>
            <!-- END STATISTIC-->


</asp:Content>
