<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ELibrary.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-5">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">

                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/generaluser.png" class="center rounded" width="150px" alt="Default User Icon">
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <form>
                                <div class="form-group mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>

                                <div class="form-group mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group my-2 d-grid gap-2">
                                    <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                <div class="form-group my-2">
                                    <a class="d-grid gap-2" href="usersignup.aspx"><input class="btn btn-primary" id="Button2" type="button" value="Sign Up" /></a>
                                </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx"><< Back To HOME</a>

            </div>
        </div>
    </div>

</asp:Content>
