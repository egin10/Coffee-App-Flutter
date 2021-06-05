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
    image: "assets/images/extras/chocolate.png",
    price: 10,
  ),
  Extra(
    name: "Ice Cream",
    image: "assets/images/extras/ice_cream.png",
    price: 15,
  ),
  Extra(
    name: "Strawberry Pastry",
    image: "assets/images/extras/strawberry_pastry.png",
    price: 20,
  ),
];
