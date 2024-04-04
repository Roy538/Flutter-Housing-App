class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended() {
    return [
      House('Bagik Hostels', 'Bagik, near Calvidas Hotel',
          'assets/images/offer01.jpeg'),
      House('Jerusalem Hostel', 'Kangaru Market, Embu',
          'assets/images/offer02.jpeg'),
      House('White House', 'Gakwegori Town, Embu',
          'assets/images/on_boarding_images/on-boarding-image-2.jpeg'),
      House('Destiney Appartment', 'Chuka Uni, Chuka',
          'assets/images/on_boarding_images/on-boarding-image-3.jpeg'),
      House('Perez', 'Kamiu, Embu',
          'assets/images/on_boarding_images/on-boarding-image-1.png'),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House('Bagik Hostels', 'Bagik, near Calvidas Hotel',
          'assets/images/offer01.jpeg'),
      House('Jerusalem Hostel', 'Kangaru Market, Embu',
          'assets/images/offer02.jpeg'),
      House('White House', 'Gakwegori Town, Embu',
          'assets/images/on_boarding_images/on-boarding-image-2.jpeg'),
      House('Destiney Appartment', 'Chuka Uni, Chuka',
          'assets/images/on_boarding_images/on-boarding-image-3.jpeg'),
      House('Perez', 'Kamiu, Embu',
          'assets/images/on_boarding_images/on-boarding-image-1.png'),
    ];
  }
}
