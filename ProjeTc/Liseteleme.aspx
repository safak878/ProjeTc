<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Liseteleme.aspx.cs" Inherits="ProjeTc.Liseteleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <h3 style="float: left">Liste</h3>

            <h3 style="float: right">
                <asp:Button ID="BtnAra" runat="server" Text="Ara" CssClass="btn btn-primary" Style="margin-top: -6px" OnClick="BtnAra_Click" />
            </h3>

            <h3 style="float: right">
                <asp:TextBox ID="TxtAra" runat="server" placeholder="Aranacak Kelime Giriniz" CssClass="form-control"></asp:TextBox>
            </h3>


        </div>

        <div class="container">

            <asp:GridView ID="GridView1" runat="server" CssClass="table " Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:ButtonField CommandName="Select" HeaderText="Seçim" Text="Seç" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <div>
                <asp:HyperLink NavigateUrl="~/Guncelleme.aspx" class="btn btn-primary" ID="HypGuncelle" runat="server">Güncelle</asp:HyperLink>


                <asp:Button class="btn btn-danger" ID="BtnSıl" runat="server" Text="Sil" OnClick="BtnSıl_Click" />


                <asp:HyperLink NavigateUrl="~/Tc.aspx" class="btn btn-outline-info" ID="HypCıkıs" Style="float: right" runat="server">Çıkış</asp:HyperLink>
            </div>
        </div>

    </form>
</body>
</html>
