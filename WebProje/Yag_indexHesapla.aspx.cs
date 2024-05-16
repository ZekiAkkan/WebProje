using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProje
{
    public partial class Yag_indexHesapla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text=="")
            {
                lblHata.Text = "Lütfen isminizi giriniz!";
            }
            else
            {
                Session["isim"] = TextBox1.Text;

                if (RdBtErkek.Checked)
                {
                    Response.Redirect("ErkekHesapla.aspx");
                }
                else if (RdBtKadin.Checked)
                {
                    Response.Redirect("KadinHesapla.aspx");
                }
                else
                {
                    lblHata.Text = "Lütfen cinsiyetinizi seçiniz!";
                }
            }
            
        }
    }
}