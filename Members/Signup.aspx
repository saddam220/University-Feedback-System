﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Practice.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~\bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="~\bootstrap/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:30%; margin-top:50px; width:40%; height:auto;" class="container form-control border-primary">
        <div class="row">
         <div class="col-md-12">
                  <asp:Label runat="server" ID="lblmsg" Text="............." style="color:crimson;"></asp:Label>
                  <hr />
              </div>  
            </div>
        <div class="row">
              
               <div class="col-md-6">
                  <asp:Label runat="server" ID="lblName" Text="FirstName"></asp:Label>
                  <asp:TextBox runat="server" ID="txtFirstName" placeholder="Enter FirstName" CssClass="form-control"></asp:TextBox>
              </div>
               <div class="col-md-6">
                  <asp:Label runat="server" ID="lblLastname" Text="LastName"></asp:Label>
                  <asp:TextBox runat="server" ID="TxtLastName" placeholder="Enter Your LastName" CssClass="form-control" ></asp:TextBox>
              </div>
          </div>
        <div class="row">
             
             <div class="col-md-6">
                  <asp:Label runat="server" ID="Label1" Text="Faculty"></asp:Label>
                 <asp:DropDownList runat="server" ID="drpFaculty" placeholder="Faculty" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Faculty_Name" DataValueField="Faculty_Name"></asp:DropDownList>

                 <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT [Faculty_Name] FROM [Faculty_Profile]"></asp:SqlDataSource>
             </div>
            <div class="col-md-6">
                  <asp:Label runat="server" ID="Label2" Text="Semester"></asp:Label>
                  <asp:DropDownList runat="server" ID="DrpSemester" placeholder="Semester" DataSourceID="SqlDataSource2" DataTextField="Semester_Name" DataValueField="Semester_Name" CssClass="form-control"></asp:DropDownList>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT [Semester_Name] FROM [Semester_Profile]"></asp:SqlDataSource>
              </div>
          </div>
        <div class="row">
             
            <div class="col-md-6">
                  <asp:Label runat="server" ID="Label3" Text="Session"></asp:Label>
                  <asp:DropDownList runat="server" ID="DrpSession" placeholder="Session" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="Session_Name" DataValueField="Session_Name"></asp:DropDownList>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT [Session_Name] FROM [Session_Profile]"></asp:SqlDataSource>
              </div>
             <div class="col-md-6">
                  <asp:Label runat="server" ID="Label4" Text="Age"></asp:Label>
                  <asp:DropDownList runat="server" ID="drpAge" CssClass="form-control" DataSourceID="SqlDataSource4" DataTextField="Age" DataValueField="Age"></asp:DropDownList>
                  <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:FeedbackSystemConnectionString %>' SelectCommand="SELECT [Age] FROM [Age_Profile]"></asp:SqlDataSource>
              </div>
          </div>

        <div class="row">
              
             <div class="col-md-6">
                  <asp:Label runat="server" ID="Label5" Text="Gender"></asp:Label>
                  <asp:TextBox runat="server" ID="txtGender" placeholder="Gender" CssClass="form-control" ></asp:TextBox>
                  
              </div>
             <div class="col-md-6">
                  <asp:Label runat="server" ID="Label6" Text="Feedback Person"></asp:Label>
                 <asp:DropDownList runat="server" ID="drpFeedbackperson" CssClass="form-control">
                     <asp:ListItem>Student</asp:ListItem>
                     <asp:ListItem>Teacher</asp:ListItem>
                     <asp:ListItem>University</asp:ListItem>
                 </asp:DropDownList> 
                 
                  
              </div>
          </div>
       
        <div class="row">
              <div class="col-md-12">
                  <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                  <asp:TextBox runat="server" ID="txtEmail" placeholder="Example@gmail.com" CssClass="form-control" TextMode="Email" CausesValidation="True"></asp:TextBox>
              </div>
           
           
          </div>
     
        <div class="row">
              

             <div class="col-md-6">
                 <asp:Label runat="server" ID="lblpassword" Text="Password"></asp:Label>
                  <asp:TextBox runat="server" ID="txtPassword" placeholder="********" CssClass="form-control" TextMode="Password"></asp:TextBox> 
                 
              </div>
             <div class="col-md-6">
                 <asp:Label runat="server" ID="lblConfirmPassword" Text="Confirm Password"></asp:Label>
                  <asp:TextBox runat="server" ID="txtConfirmPassword" placeholder="********" CssClass="form-control" TextMode="Password"></asp:TextBox> 
              </div>
           

         </div>
        <div class="row">
         <div class="col-md-12">
                <br />
                  <asp:Button runat="server" Text="Register" ID="btnSignup" CssClass="btn btn-danger form-control" OnClick="btnSignup_Click"  />
              </div>
            </div>
        <div class="row">
            
             <div class="col-md-6">
                 <br />
                   <asp:LinkButton runat="server" ID="lnkSignin" Text="Already have account" CssClass="btn-link border-0 form-control" OnClick="lnkSignin_Click"></asp:LinkButton>
              </div>
            <div class="col-md-6">
                 <br />
                   <asp:LinkButton runat="server" ID="LinkButton1" Text="Forgot Password" CssClass="btn-link border-0 form-control" OnClick="lnkSignin_Click"></asp:LinkButton>
              </div>
          </div>
    
    </div>
    </form>
</body>
</html>
