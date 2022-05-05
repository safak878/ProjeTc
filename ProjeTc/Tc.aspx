<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tc.aspx.cs" Inherits="ProjeTc.Tc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

    <form id="form1" runat="server">


        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-2-strong" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">

                            <h2>Sorgulama Ekranı</h2>

                            <div class="container">

                                <div class="form-group">
                                    TC<asp:TextBox class="form-control" ID="TxtKKımlık" runat="server" placeholder="11 Haneli TC Kimlik Numarınızı Giriniz" MaxLength="11" TextMode="Phone"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    ADI<asp:TextBox class="form-control" ID="TxtAd" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    SOYADI<asp:TextBox class="form-control" ID="TxtSoyad" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    DOĞUM YILI:<asp:TextBox class="form-control" ID="TxtDogumYılı" runat="server" MaxLength="4" TextMode="Number"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    DURUM<asp:DropDownList ID="DrpDurum" runat="server" Class="form-control" EnableTheming="True">
                                        <asp:ListItem>Onaylandı</asp:ListItem>
                                        <asp:ListItem>Onaylanmadı</asp:ListItem>
                                        <asp:ListItem>Beklemede</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                                <br />

                                <asp:Label role="alert" ID="LblSonuc" runat="server" Enabled="False" BorderColor="White"></asp:Label><br />
                                <br />
                                <br />

                                <asp:Button class="btn btn-primary btn-lg" ID="BtnSorgula" runat="server" Text="Sorgula" OnClick="BtnSorgula_Click" Onclick="myFunction" />
                                

                                <script>
                                    function myFunction() {
                                        alert("Kayıt Başarılı");
                                    }
                                </script>
                                <asp:Button class="btn btn-success btn-lg" ID="BtnKaydet" runat="server" Text="Kaydet" OnClick="BtnKaydet_Click" /><br />
                                <br />
                                <asp:HyperLink class="btn btn-dark btn-lg" NavigateUrl="~/Liseteleme.aspx" ID="HyperLink1" runat="server">Tüm Liste</asp:HyperLink>
                            </div>
    </form>
</body>

</html>

