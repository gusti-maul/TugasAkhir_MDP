class IniBerita {
  final image;

  IniBerita(this.image);
}

List<IniBerita> carousels =
    carouselsData.map((item) => IniBerita(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/berita_giias.png"},
  {"image": "assets/images/berita-cb150x.png"},
  {"image": "assets/images/berita-gixxer250sf.png"},
];

class IniGaleri {
  final image;

  IniGaleri(this.image);
}

List<IniBerita> carousels1 =
    carousels1Data.map((item) => IniBerita(item['image'])).toList();

var carousels1Data = [
  {"image": "assets/images/galeri (1).png"},
  {"image": "assets/images/galeri (2).png"},
  {"image": "assets/images/galeri (3).png"},
  {"image": "assets/images/galeri (4).png"},
  {"image": "assets/images/galeri (5).png"},
];
