class ogrenci {
  int id = -1;
  String adi = "";
  String soyadi = "";
  int not = 0;
  String foto = "";
  String _durum = "";
  bool secili = false;

  ogrenci();
  ogrenci.parametreli(this.id, this.adi, this.soyadi, this.not, this.foto);

  String get getDurum {
    if (this.not >= 55)
      _durum = "geçti";
    else if (this.not >= 40)
      _durum = "bütünleme";
    else
      _durum = "kaldı";

    return _durum;
  }
}
