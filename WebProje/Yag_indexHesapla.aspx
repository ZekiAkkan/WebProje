<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Yag_indexHesapla.aspx.cs" Inherits="WebProje.Yag_indexHesapla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;
    <section id="hesapla">
            <div class="container px-4">
                <div class="row gx-4 justify-content-center">
                    <div class="col-lg-8">
                        <asp:Label ID="Label1" runat="server" Text="İsiminiz giriniz:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Cinsiyet:"></asp:Label>
                        <asp:RadioButton ID="RdBtErkek" runat="server" GroupName="cinsiyet" Text="Erkek" />
                        <asp:RadioButton ID="RdBtKadin" runat="server" GroupName="cinsiyet" Text="Kadın" />

                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="İleri" CssClass="btn btn-lg btn-dark" OnClick="Button1_Click" />

                        <br />
                        <asp:Label ID="lblHata" runat="server" ForeColor="Red"></asp:Label>

                    </div>

                    </div>
                </div>
        </section>
    
&nbsp;
    
</asp:Content>
