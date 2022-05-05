using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
namespace ProjeTc
{
    public partial class Liseteleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Crud.ListeleAra(GridView1,"select ıd as ID, Ad as 'Ad', Soyad as 'Soyad', Tc as 'Tc', Durum as 'Durum' from Bılgıler");


        }

        protected void BtnSıl_Click(object sender, EventArgs e)
        {
            int secilemID = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secilemID];
            string sorgu = "Delete from Bılgıler where ID='"+row.Cells[1].Text+"'";
            SqlCommand komut = new SqlCommand();

            Crud.Guncelle(komut,sorgu);
            Crud.ListeleAra(GridView1, "select ıd as ID, Ad as 'Ad', Soyad as 'Soyad', Tc as 'Tc', Durum as 'Durum' from Bılgıler");
        }

        protected void BtnAra_Click(object sender, EventArgs e)
        {
            Crud.ListeleAra(GridView1, "select ıd as ID, Ad as 'Ad', Soyad as 'Soyad', Tc as 'Tc', Durum as 'Durum' from Bılgıler where Ad like '%" + TxtAra.Text+ "%' or  TC like'%"+TxtAra.Text+"%'");
        }
    }
}