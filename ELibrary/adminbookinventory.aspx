<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibrary.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid my-3">
        <div class="row">

            <div class="col col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row mb-3">
                            <center>
                            <h3>Book Details</h3>
                            <img src="img/books.png" class="center rounded" width="80em" alt="Default Book Icon">
                            </center>
                        </div>

                        <!-- File Upload -->

                        <div class="row">
                            <div class="col mb-3">
                                <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <!-- Book Details -->
                        
                        <div class="row">
                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID" TextMode="Number"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" Text=""><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Book Name" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- General Details -->                       

                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Gujarati" Value="Gujarati" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="French" Value="French" />
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher</label>
                                <div class="form-group mb-3">
                                    <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group mb-3">
                                     <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Author 1" Value="Author 1" />
                                        <asp:ListItem Text="Author 2" Value="Author 2" />
                                    </asp:DropDownList>
                                </div>

                                <label>Publish Date</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="mm-dd-yy" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:ListBox class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                            <asp:ListItem Text="Select" Value="Select" />
                                            <asp:ListItem Text="Genre 1" Value="Genre 1" />
                                            <asp:ListItem Text="Genre 2" Value="Genre 2" />
                                        </asp:ListBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                        <!-- Book General Details --> 

                         <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Book Cost (per unit)</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Book Cost" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!-- Book Desc Details -->

                        <div class="row">
                            <div class="col">
                                <label>Book Description</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Description" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!-- Buttons -->

                        <div class="row">
                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Add" />
                            </div>

                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Update" />
                            </div>

                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-danger" ID="Button3" runat="server" Text="Delete" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col col-md-7 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <center>
                            <h3>Book Inventory List</h3>
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
