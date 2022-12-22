class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int perNight;

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/hoofzy/dog1.jpeg',
      titleTxt: 'Avinash Sharma',
      subTxt: 'Exp: 5 years',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 180,
    ),
    HotelListData(
      imagePath: 'assets/hoofzy/dog2.jpg',
      titleTxt: 'Remo',
      subTxt: 'Exp: 4 years',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 200,
    ),
    HotelListData(
      imagePath: 'assets/hoofzy/dog3.jpg',
      titleTxt: 'Mrinal',
      subTxt: 'Exp: 4 years',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perNight: 60,
    ),
    HotelListData(
      imagePath: 'assets/hoofzy/dog4.jpg',
      titleTxt: 'Sahil Jain',
      subTxt: 'Exp: 2 years',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perNight: 170,
    ),
    HotelListData(
      imagePath: 'assets/hoofzy/dog3.jpg',
      titleTxt: 'Pranay Kumar',
      subTxt: 'Exp: 3 years',
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      perNight: 200,
    ),
  ];
}
