class Extra {
  late final String name, image;
  late final int price;

  Extra({
    required this.name,
    required this.image,
    required this.price,
  });
}

List<Extra> extras = [
  Extra(
    name: "Chocolate",
    image: "assets/extras/chocolate.png",
    price: 10,
  ),
  Extra(
    name: "Ice Cream",
    image: "assets/extras/ice_cream.png",
    price: 15,
  ),
  Extra(
    name: "Milkshake",
    image: "assets/extras/milkshake.png",
    price: 20,
  ),
];
