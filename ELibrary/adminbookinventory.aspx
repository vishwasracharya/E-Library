<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibrary.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $("#imgview").attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

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
                            <img src="book_inventory/books1.png" id="imgview" class="center rounded" width="80" alt="Default Book Icon">
                            </center>
                        </div>

                        <!-- File Upload -->

                        <div class="row">
                            <div class="col mb-3">
                                <asp:FileUpload onChange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <!-- Book Details -->
                        
                        <div class="row">
                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group mb-3">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID" TextMode="SingleLine"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
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
                                            <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                            <asp:ListItem Text="Action" Value="Action" />
                                            <asp:ListItem Text="Adventure" Value="Adventure" />
                                            <asp:ListItem Text="Business" Value="Business" />
                                            <asp:ListItem Text="Classic" Value="Classic" />
                                            <asp:ListItem Text="Crime" Value="Crime" />
                                            <asp:ListItem Text="Health/fitness" Value="Health/fitness" />
                                            <asp:ListItem Text="Philosophy" Value="Philosophy" />
                                            <asp:ListItem Text="spirituality" Value="spirituality" />
                                            <asp:ListItem Text="Economics" Value="Economics" />
                                            <asp:ListItem Text="Self help" Value="Self help" />
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
                                <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>

                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                            </div>

                            <div class="col-md-4 d-grid">
                                <asp:Button class="btn btn-danger" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                        
                                        <ControlStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        
                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            
                                                            <!--Title Of Book-->
                                                            <div class="row">
                                                                <div class="col-12 mb-2">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Size="X-Large" Font-Bold="True"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12 mb-2">

                                                                    Author -
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language -
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12 mb-2">

                                                                    Publisher -
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date - <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12 mb-2">

                                                                    Cost -
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available -
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12 ">

                                                                    Description -
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("book_description") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2">
                                                            <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>

                                            </ItemTemplate>
                                        </asp:TemplateField>
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
