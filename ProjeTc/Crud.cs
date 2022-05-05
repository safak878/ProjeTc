using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace ProjeTc
{
    public class Crud
    {
        public static void ListeleAra(GridView grid ,string sql)
        {

            SqlConnection baglantı = new SqlConnection(WebConfigurationManager.ConnectionStrings["Baglantı"].ConnectionString);
            baglantı.Open();
            SqlCommand komut = new SqlCommand(sql, baglantı);
            SqlDataReader listele = komut.ExecuteReader();
            grid.DataSource = listele;
            grid.DataBind();
            listele.Close();
            baglantı.Close();
            baglantı.Dispose();

        }

        public static void Kayıtgetir(TextBox ID,TextBox Tc,TextBox Adı ,TextBox Soyadı,DropDownList Durum )
        {
            SqlConnection baglantı = new SqlConnection(WebConfigurationManager.ConnectionStrings["Baglantı"].ConnectionString);
            baglantı.Open();
            SqlCommand komut = new SqlCommand("select* from Bılgıler where ID='" + ID.Text + "'", baglantı);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
             
                Adı.Text = dr[1].ToString();
                Soyadı.Text = dr[2].ToString();
                Tc.Text = dr[3].ToString();
                Durum.Text = dr[4].ToString();

            }
            dr.Close();
            baglantı.Close();
            baglantı.Dispose();


        }
        public static void Guncelle(SqlCommand komut,string sql )
        {

            SqlConnection baglantı = new SqlConnection(WebConfigurationManager.ConnectionStrings["Baglantı"].ConnectionString);
            baglantı.Open();
            komut.Connection = baglantı;
            komut.CommandText = sql;
            komut.ExecuteNonQuery();

            baglantı.Close();
            baglantı.Dispose();

        }
    }
}