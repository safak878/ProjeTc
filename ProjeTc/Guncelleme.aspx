<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guncelleme.aspx.cs" Inherits="ProjeTc.Guncelleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

                            <h2> Güncelleme Ekranı</h2>

                            <div class="container">

                                 <div class="form-group">
                                     <div style="float:left;width:73%"> 
                                    ID<asp:TextBox  class="form-control" ID="TxtId" runat="server" placeholder="Lütfen ID giriniz" TextMode="Number" OnTextChanged="TxtId_TextChanged" ></asp:TextBox>
                                      </div>
                                     <div style="float:left"> 
                                     <asp:Button CssClass="btn btn-primary" ID="BtnKayıtGetır" runat="server" Text="Kayıt Getir" style="margin-top:22px;margin-left:3px" OnClick="BtnKayıtGetır_Click"  />
                                         </div>
                                     <br />
                                     <br /> 
                                     <br /> 
                                    
                                </div>
                                <div class="form-group">
                                    TC<asp:TextBox class="form-control" ID="TxtKKımlık" runat="server" MaxLength="11" TextMode="Number"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    ADI<asp:TextBox class="form-control" ID="TxtAd" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    SOYADI<asp:TextBox class="form-control" ID="TxtSoyad" runat="server"></asp:TextBox>

                                </div>
                                
                                <div class="form-group">

                                  DURUM<asp:DropDownList ID="DrpDurum" runat="server" Class="form-control">
                                        <asp:ListItem>Onaylandı</asp:ListItem>
                                        <asp:ListItem>Onaylanmadı</asp:ListItem>
                                        <asp:ListItem>Beklemede</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <br />
                                
                                <asp:Label CssClass="alert-success" role="alert" ID="LblSonuc" runat="server" Enabled="False" BorderColor="White"></asp:Label><br />
                                <asp:Label CssClass="alert-danger" role="alert" ID="LblSonuc1" runat="server" Enabled="False" BorderColor="White"></asp:Label><br />
                              
                                <asp:Button class="btn btn-success btn-lg" ID="BtnKaydet" runat="server" Text="Kaydet" OnClick="BtnKaydet_Click" />
                                
                    <asp:HyperLink  NavigateUrl="~/Liseteleme.aspx" class="btn btn-danger btn-lg" ID="HypCıkıs" runat="server">Çıkış</asp:HyperLink>
                           
                                </div>
    </form>
</body>
</html>
