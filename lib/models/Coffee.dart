import 'Extra.dart';

class Coffee {
  late final String name, description, image;
  late final int price;
  late final double rating;
  late final List<Extra> extras;

  Coffee({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
    required this.extras,
  });
}

List<Coffee> coffees = [
  Coffee(
      name: "Cafe Latte",
      image: "assets/images/coffee_cup/coffee1.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 30,
      rating: 4.6,
      extras: extras..shuffle()),
  Coffee(
      name: "Caffe Americano",
      image: "assets/images/coffee_cup/coffee2.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 20,
      rating: 4.8,
      extras: extras..shuffle()),
  Coffee(
      name: "Irish Coffee",
      image: "assets/images/coffee_cup/coffee3.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 10,
      rating: 3.6,
      extras: extras..shuffle()),
  Coffee(
      name: "Cold Coffe",
      image: "assets/images/coffee_cup/coffee4.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 40,
      rating: 4.9,
      extras: extras..shuffle()),
];
