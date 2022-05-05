using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjeTc
{
    public partial class Guncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         

        }

        protected void TxtId_TextChanged(object sender, EventArgs e)
        {
            Crud.Kayıtgetir(ID: TxtId, Tc:TxtKKımlık,Adı:TxtAd, Soyadı:TxtSoyad,Durum:DrpDurum);

         
        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            string sorgu ="update Bılgıler set Ad=@p1,Soyad=@p2,Tc=@p3,Durum=@p4 where ID='" + TxtId.Text + "'";
            SqlCommand komut = new SqlCommand();
            komut.Parameters.Add("@p1", SqlDbType.VarChar).Value = TxtAd.Text;
            komut.Parameters.Add("@p2", SqlDbType.VarChar).Value = TxtSoyad.Text;
            komut.Parameters.Add("@p3", SqlDbType.Char).Value = TxtKKımlık.Text;
            komut.Parameters.Add("@p4", SqlDbType.VarChar).Value = DrpDurum.Text;
      
            Crud.Guncelle(komut, sorgu);
            LblSonuc.Text = "Güncelleme Başarılı";
           
        }

        protected void BtnKayıtGetır_Click(object sender, EventArgs e)
        {

            Crud.Kayıtgetir(ID: TxtId, Tc: TxtKKımlık, Adı: TxtAd, Soyadı: TxtSoyad, Durum:DrpDurum);
        }
    }
}