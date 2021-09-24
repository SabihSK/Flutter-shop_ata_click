class Cart {
  String title;
  String price;
  String img;
  int quantity;

  Cart({this.title, this.price, this.img, this.quantity});

  void increment() {
    quantity = quantity + 1;
  }

  void decrement() {
    if (quantity > 0) {
      quantity = quantity - 1;
    } else {
      return;
    }
  }


}
