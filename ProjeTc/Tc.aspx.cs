using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjeTc.TcKımlık;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ProjeTc
{
    public partial class Tc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DrpDurum.Text = "Beklemede";
            LblSonuc.Enabled = false;
        }

        protected void BtnSorgula_Click(object sender, EventArgs e)
        {
            try
            {
                KPSPublicSoapClient sorgu = new KPSPublicSoapClient();
            
            long Tc = Convert.ToInt64(TxtKKımlık.Text);
            var sonuc = sorgu.TCKimlikNoDogrula(Tc, TxtAd.Text.ToUpper(), TxtSoyad.Text.ToUpper(), Convert.ToInt32(TxtDogumYılı.Text));

          
                if (sonuc)
                {
                    
                    LblSonuc.Text = "Tc kimlik numarası doğru";
                    DrpDurum.Text = "Onaylandı";
                   
                    

                }

                else
                {
                    LblSonuc.Text = "Tc kimlik numarası yanlış";
                    DrpDurum.Text = "Onaylanmadı";
                  

                }
            }
            catch (Exception)
            {
               

            }
            
            

            }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            SqlConnection baglantı = new SqlConnection(WebConfigurationManager.ConnectionStrings["Baglantı"].ConnectionString);
            baglantı.Open();
            SqlCommand komut = new SqlCommand("insert into Bılgıler values(@p1,@p2,@p3,@p4)", baglantı);
            komut.Parameters.Add("@p1", SqlDbType.VarChar).Value = TxtAd.Text;
            komut.Parameters.Add("@p2", SqlDbType.VarChar).Value = TxtSoyad.Text;
            komut.Parameters.Add("@p3", SqlDbType.Char).Value = TxtKKımlık.Text;
            komut.Parameters.Add("@p4", SqlDbType.VarChar).Value = DrpDurum.Text;
            komut.ExecuteNonQuery();
            baglantı.Close();
            baglantı.Dispose();
            LblSonuc.Text = "Kayıt başarılı";
            
           
        }
    }
    }
