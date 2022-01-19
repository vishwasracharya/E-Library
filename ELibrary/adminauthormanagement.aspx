<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ELibrary.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-3">
        <div class="row">

            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row mb-3">
                            <center>
                            <h3>Author Details</h3>
                            <img src="img/writer.png" class="center rounded" width="80em" alt="Default Author Icon">
                            </center>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                                        <asp:Button class="btn btn-secondary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Author Name" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                            <h3>Author List</h3>
                            </center>
                        </div>

                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
