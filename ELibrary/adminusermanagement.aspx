<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminusermanagement.aspx.cs" Inherits="ELibrary.adminusermanagement" %>
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
                            <h3>Member Details</h3>
                            <img src="img/generaluser.png" class="center rounded" width="80em" alt="Default User Icon">
                            </center>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID" TextMode="Number"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" Text=""><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Full Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Account Status" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                    <asp:LinkButton class="btn btn-success mx-1 rounded" ID="LinkButton3" runat="server" Text=""><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-warning mx-1 rounded" ID="LinkButton4" runat="server" Text=""><i class="far fa-pause-circle"></i></asp:LinkButton>
                                    <asp:LinkButton class="btn btn-danger mx-1 rounded" ID="LinkButton5" runat="server" Text=""><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Date</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="mm-dd-yy" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Contact No" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Email ID</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" ReadOnly="True">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="City" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Pincode" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Address:</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Full Address" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 d-grid">
                                <asp:Button class="btn btn-danger" ID="Button2" runat="server" Text="Delete User Permanantly" />
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
                            <h3>Member List</h3>
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
