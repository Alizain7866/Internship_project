<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/login_form.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder1" runat="server">
  

    <section id="forms">
    <div class="the_form">
        <div class="top_part">
            <div class="row row_2">
                <p>Sign In / Sign Up Form </p>

            </div>
        </div>

    <div class="actual_form">
       
        <form runat ="server">
            <div class="form_content">
            <label for="GeSolucions">Email ID:</label>
            <input type="email" title="GeSolucions" id="GeSolucions">

            <label for="Password">Password:</label>
            <input type="password" title="Password" id="Password">

            <div class="buttons">
                <div class="a_div">
                    <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="new_button" OnClick="Button1_Click" />
                </div>
      
        
            </div>
                </div>
        </form>
    </div>
        
    </div>


</section>


</asp:Content>