import 'Extra.dart';

class Coffee {
  late final String id, name, description, image;
  late final int price, reviews;
  late final double rating;
  late final List<Extra> extras;

  Coffee({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.reviews,
    required this.rating,
    required this.extras,
  });
}

List<Coffee> bestCoffees = [
  Coffee(
      id: "b1",
      name: "Cafe Latte",
      image: "assets/images/coffee_cup/coffee1.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 30,
      reviews: 70,
      rating: 4.6,
      extras: extras..shuffle()),
  Coffee(
      id: "b2",
      name: "Caffe Americano",
      image: "assets/images/coffee_cup/coffee2.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 20,
      reviews: 80,
      rating: 4.8,
      extras: extras..shuffle()),
  Coffee(
      id: "b3",
      name: "Irish Coffee",
      image: "assets/images/coffee_cup/coffee3.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 10,
      reviews: 90,
      rating: 3.6,
      extras: extras..shuffle()),
  Coffee(
      id: "b4",
      name: "Cold Coffe",
      image: "assets/images/coffee_cup/coffee4.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 40,
      reviews: 100,
      rating: 4.9,
      extras: extras..shuffle()),
  Coffee(
      id: "b5",
      name: "Hot Coffe",
      image: "assets/images/coffee_cup/coffee5.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 30,
      reviews: 60,
      rating: 4.7,
      extras: extras..shuffle()),
];

List<Coffee> mostPopulerCoffees = [
  Coffee(
      id: "m1",
      name: "Cafe Latte",
      image: "assets/images/coffee_cup/coffee1.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 30,
      reviews: 70,
      rating: 4.6,
      extras: extras..shuffle()),
  Coffee(
      id: "m2",
      name: "Caffe Americano",
      image: "assets/images/coffee_cup/coffee2.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 20,
      reviews: 60,
      rating: 4.8,
      extras: extras..shuffle()),
  Coffee(
      id: "m3",
      name: "Irish Coffee",
      image: "assets/images/coffee_cup/coffee3.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 10,
      reviews: 80,
      rating: 3.6,
      extras: extras..shuffle()),
  Coffee(
      id: "m4",
      name: "Cold Coffe",
      image: "assets/images/coffee_cup/coffee4.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 40,
      reviews: 90,
      rating: 4.9,
      extras: extras..shuffle()),
  Coffee(
      id: "m5",
      name: "Hot Coffe",
      image: "assets/images/coffee_cup/coffee5.png",
      description:
          "Coffee is brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and Reunion in the Indian Ocean.",
      price: 30,
      reviews: 100,
      rating: 4.7,
      extras: extras..shuffle()),
];
