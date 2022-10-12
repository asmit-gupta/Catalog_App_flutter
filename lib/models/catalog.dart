class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "IPhone 12 Pro",
        desc: "Apple IPhone 12th generation",
        price: 999,
        color: "#33505a",
        image: "https://m.media-amazon.com/images/I/51KHjEhXtKL._AC_SX679_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
