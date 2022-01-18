<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ELibrary.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid my-3">
        <div class="row">

            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row mb-3">
                            <center>
                            <h3>Book Issuing</h3>
                            <img src="img/books.png" class="center rounded" width="80em" alt="Default Publisher Icon">
                            </center>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Book ID" TextMode="Number"></asp:TextBox>
                                    <asp:Button class="btn btn-secondary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Member Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="mm-dd-yy" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="mm-dd-yy" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 d-grid">
                                <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Issue" />
                            </div>
                            <div class="col-md-6 d-grid">
                                <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="Return" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-7 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <center>
                            <h3>Issued Book List</h3>
                            </center>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-hover" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
