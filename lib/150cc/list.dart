class listcb150x {
  final image;

  listcb150x(this.image);
}

List<listcb150x> carouselscb150x =
    carouselsData.map((item) => listcb150x(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/cb150x.png"},
  {"image": "assets/images/spekcb150x.png"},
];

class listcbr150r {
  final image;

  listcbr150r(this.image);
}

List<listcbr150r> carouselscbr150r =
    carousels1Data.map((item) => listcbr150r(item['image'])).toList();

var carousels1Data = [
  {"image": "assets/images/cbr150r.png"},
  {"image": "assets/images/spekcbr150r.png"},
];

class listr15 {
  final image;

  listr15(this.image);
}

List<listr15> carouselsr15 =
    carousel2Data.map((item) => listr15(item['image'])).toList();

var carousel2Data = [
  {"image": "assets/images/r15.png"},
  {"image": "assets/images/spekr15.png"},
];

class listgsxr150 {
  final image;

  listgsxr150(this.image);
}

List<listgsxr150> carouselsgsxr150 =
    carousels3Data.map((item) => listgsxr150(item['image'])).toList();

var carousels3Data = [
  {"image": "assets/images/gsxr150.png"},
  {"image": "assets/images/spekgsxr150.png"},
];
