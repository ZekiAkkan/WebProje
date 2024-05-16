<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="ErkekHesapla.aspx.cs" Inherits="WebProje.ErkekHesapla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;
    <section id="hesapla">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                       

                        <asp:Label ID="Label1" runat="server" Text="Toplam vücut ağırlığı"></asp:Label>
                        <asp:TextBox ID="TxtVucutAgirligi" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        
                        <asp:Label ID="Label2" Text="Bel ölçüsü(cm)" runat="server"></asp:Label>
                        <asp:TextBox ID="TxtBel" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label6" Text="Boy ölçüsü(m)" runat="server"></asp:Label>
                        <asp:TextBox ID="TxtBoy" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="BtnHesapla" href="hesapla" runat="server" Text="Hesapla" CssClass="btn btn-lg btn-dark" OnClick="BtnHesapla_Click"/>
                        <br />
                        <br />

                          <asp:Label ID="Lblisim" Text="" runat="server"></asp:Label>
                        <asp:Label ID="Label8" Text="Bey," runat="server"></asp:Label>  
                        <br />
                         <asp:Label ID="Label3" Text="Yağsız Vücut Kütleniz:" runat="server"></asp:Label>
                        <asp:Label ID="lblYagsiz" Text="" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" Text="Vücut Yağ Ağırlığınız:" runat="server"></asp:Label>
                        <asp:Label ID="LblYagAgirligi" Text="" runat="server"></asp:Label>
                        <br />
                         <asp:Label ID="Label4" Text="Vücut Yağ Yüzdeniz:" runat="server"></asp:Label>
                        <asp:Label ID="lblYagYuzdesi" Text="" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" Text="Vücut Kitle Endeksiniz:" runat="server"></asp:Label>
                        <asp:Label ID="LblKitle" Text="" runat="server"></asp:Label>

                    </div>

                    </div>
                </div>
        </section>
    
&nbsp;
</asp:Content>
