<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Purchase_Tokens.aspx.cs" Inherits="Purchase_Tokens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

<div class="page-wrapper bg-sky p-t-100 p-b-100 font-robo">
  <div class="wrapper wrapper--w680">
    <div class="card card-1">
       <div class="row">
         <div class="col-md-12">
          <div class="panel panel-primary">
            <div class="panel-heading">
            <div class="panel-title"> 
                <h3 style="color:White">PURCHASE TOKENS</h3>
                </div></div>
                                    </div>
                                    </div>
                                    </div>
                                    
                                     
                                       <div class="panel-heading">
                                       <h3 class="panel-title"></h3>
                                    </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
        
        <asp:AsyncPostBackTrigger ControlID="TextBox2" />
        </Triggers>
      <ContentTemplate>
      
                                          <div class="panel-body p-b-0">
                                    <div class="row">
                                    <div class="form-group col-lg-4">

                                        <asp:Label runat = "server" ID="label" Enabled="false" Text= "1 Token"></asp:Label>
                                        </div>
                                        <div class="col-lg-4">                                       
                                            <asp:Label ID="Label1" runat="server" Text="=1 PAN Application"></asp:Label>
                                        </div>

                                 
                                    </div>


                                     <div class="row">
                                    <div class="col-md-4 form-group">
                                        <asp:Label runat = "server" ID="labelp3" Enabled="false" Text= "1 Token Price"></asp:Label>
                                      
                                    </div>
                                    <div class="col-md-4 form-group">
                                        <asp:Label ID="Label4" runat="server" Text="107" Enabled="false"></asp:Label>
                                      
                                    </div>
                                    </div>
                                      <br />
                                    <div class="row">
                                     <div class="col-md-12 form-group">
                                        <asp:Label ID="Label2" runat="server" Enabled="false" Text="Token Will be credited to your account in 4 working hours after
                                      purchase" Font-Bold="true" ForeColor="Blue"></asp:Label>
                                      </div>
                                    </div>
                                  <br />

                                    <div class="row">
                                    <div class="col-md-4 form-group">
                                        <asp:Label runat = "server" ID="label5" Text= "Tokens" Enabled="false"></asp:Label>
                                      
                                    </div>
                                    <div class="col-md-4 form-group">
                                       <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter value" 
                                            CssClass="form-control" AutoPostBack="True" 
                                            ontextchanged="TextBox6_TextChanged"></asp:TextBox>
                                    </div>
                                    </div>

                                      <div class="row">
                                    <div class="col-md-4 form-group">
                                        <asp:Label runat = "server" ID="label3" Text= "Total Price in Rs" Enabled="false"></asp:Label>
                                      
                                    </div>
                                    <div class="col-md-4 form-group">
                                       <asp:TextBox ID="TextBox2" runat="server" Enabled="false"  CssClass="form-control"></asp:TextBox>
                                    </div>
                                    </div>

                                     <div class="row">
                                    <div class="col-md-6 form-group p-l-200">
                                        <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue  btn-block" 
                                             ID="Send" Text = "Purchase" Width="100px"/>
                                      
                                    </div>
                                    <div class="col-md-6 form-group">
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue btn-block" 
                                             ID="Close" Text = "Close" Width="100px" />
                                    </div>
                                    </div>



                                    <%--<div class="row">
                                     <div class="col-md-4  col-md-offset-2" >
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue  btn-block" 
                                             ID="Send" Text = "Purchase"/>
                                      <asp:Button runat = "server" CssClass="btn btn-inverse bg-blue btn-block" 
                                             ID="Close" Text = "Close" />
                                      </div>
                                     </div>--%>

                                    


                                    </div>
                                    
                                    </ContentTemplate>
                                    </asp:UpdatePanel>
                                    </div>
                                    </div>
                                    
                                   
                                  
 </div>                                       

</asp:Content>

