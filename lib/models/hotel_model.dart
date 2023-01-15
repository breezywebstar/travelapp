class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'lib/images/hotelcape.png',
    name: 'Cape Town Hotel',
    address: 'Cape Town SA',
    price: 175,
  ),
  Hotel(
    imageUrl: 'lib/images/hotelllag.png',
    name: 'Lagos Hotel',
    address: 'Lagos Nigeria',
    price: 200,
  ),
  Hotel(
    imageUrl: 'lib/images/hotelsa.png',
    name: 'Hotel South Africa',
    address: 'South Africa',
    price: 300,
  ),
  Hotel(
    imageUrl: 'lib/images/hotelvi.png',
    name: 'Victoria Island Hotel',
    address: 'Lagos Nigeria',
    price: 250,
  ),
];
