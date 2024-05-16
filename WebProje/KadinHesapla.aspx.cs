using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProje
{
    public partial class KadinHesapla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lblisim.Text=Session["isim"].ToString();
        }

        protected void BtnHesapla_Click(object sender, EventArgs e)
        {
            if (TxtVucutAgirligi.Text=="" || TxtBel.Text=="" || TxtBoy.Text=="")
            {

                LblYagAgirligi.Text="Hesaplanamadı,lütfen istenilen değerleri giriniz";
                LblKitle.Text="Hesaplanamadı,lütfen istenilen değerleri giriniz";
                lblYagsiz.Text="Hesaplanamadı,lütfen istenilen değerleri giriniz";
                lblYagYuzdesi.Text="Hesaplanamadı,lütfen istenilen değerleri giriniz";
            }
            else
            {
                try
                {
                    double boy = Convert.ToDouble(TxtBoy.Text);
                    double bel = Convert.ToDouble(TxtBel.Text);
                    double Kilo = Convert.ToDouble(TxtVucutAgirligi.Text);
                    double bilek = Convert.ToDouble(TxtBilek.Text);
                    double kalca = Convert.ToDouble(TxtKalça.Text);
                    double onkol= Convert.ToDouble(TxtÖnkol.Text);

                    double kiloPound = Math.Round(Kilo*2.2046226218487757);
                    double belinc = Math.Round(bel*0.39370079);
                    double bilekinc = Math.Round(bilek*0.39370079);
                    double kalcainc = Math.Round(kalca*0.39370079);
                    double onkolinc = Math.Round(onkol*0.39370079);

                    double Faktor1 = (kiloPound*0.732)+8.987;
                    double Faktor2 = (belinc*0.157);
                    double Faktor3 = (bilekinc/3.140);
                    double Faktor4 = (kalcainc*0.249);
                    double Faktor5 = (onkolinc*0.434);

                    double YagsizVucut = Math.Round(Faktor1+Faktor3-Faktor2-Faktor4+Faktor5);
                    double YagAgirligi = Math.Round((kiloPound-YagsizVucut));
                    double YagYuzdesi = Math.Round((YagAgirligi*100)/kiloPound);

                    lblYagsiz.Text=(YagsizVucut/2.2046226218487757).ToString();
                    LblYagAgirligi.Text= (YagAgirligi/2.2046226218487757).ToString();
                    lblYagYuzdesi.Text=YagYuzdesi.ToString();
                    LblKitle.Text=(Kilo/(boy*boy)).ToString();


                }
                catch (FormatException)
                {

                    LblYagAgirligi.Text="Hatalı değer girdiniz";
                    LblKitle.Text="Hatalı değer girdiniz";
                    lblYagYuzdesi.Text="Hatalı değer girdiniz";
                    lblYagsiz.Text="Hatalı değer girdiniz";
                }
            }
        }
    }
}