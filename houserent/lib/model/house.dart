class House {
  String name;
  String address;
  String imgurl;
  House(this.name, this.address, this.imgurl);
  static List<House> genarateRecommanded() {
    return [
      House('The Moon ', '51/B ,Pabna', 'assets/images/house01.jpeg'),
      House('The Moon ', '57/A ,Pabna', 'assets/images/house02.jpeg')
    ];
  }

  static List<House> genarateOfferHouse() {
    return [
      House('The Moon', '257/B ,Pabna', 'assets/images/offer01.jpeg'),
      House('The Moon', '258/B ,Pabna', 'assets/images/offer02.jpeg'),
    ];
  }
}
