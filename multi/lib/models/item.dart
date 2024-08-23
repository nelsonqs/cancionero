class Item {
  int id;
  String name;
  double price;
  double weight;
  bool inWishList;
  int quantity;
  String imagePath;
  String brand;
  String category;
  String subCategory;
  String presentation;
  String unitMeasurement;

  String? orderId;
  String? invoiceNumber;
  String? invoiceName;
  String? dateOrder;
  String? typeMovement;

  int quantitySale; // cambiaria  valor por default 0
  double sugestedPrice;
  String? typeProduct;
  int quantityUvCaja;
  double weightUnit;
  int orderi;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.inWishList,
      required this.quantity,
      required this.imagePath,
      required this.brand,
      required this.category,
      required this.subCategory,
      required this.presentation,
      required this.unitMeasurement,
      required this.quantitySale,
      required this.sugestedPrice,
      required this.typeProduct,
      required this.quantityUvCaja,
      required this.weightUnit,
      required this.orderi});
  Item copyWith({
    int? id,
    String? name,
    double? price,
    double? weight,
    bool? inWishList,
    int? quantity,
    String? imagePath,
    String? brand,
    String? category,
    String? subCategory,
    String? presentation,
    String? unitMeasurement,
    String? orderId,
    String? invoiceNumber,
    String? invoiceName,
    String? dateOrder,
    String? typeMovement,
    int? quantitySale,
    double? sugestedPrice,
    String? typeProduct,
    int? quantityUvCaja,
    double? weightUnit,
    int? orderi,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      weight: weight ?? this.weight,
      inWishList: inWishList ?? this.inWishList,
      quantity: quantity ?? this.quantity,
      imagePath: imagePath ?? this.imagePath,
      brand: brand ?? this.brand,
      category: category ?? this.category,
      subCategory: subCategory ?? this.subCategory,
      presentation: presentation ?? this.presentation,
      unitMeasurement: unitMeasurement ?? this.unitMeasurement,
      quantitySale: quantitySale ?? this.quantitySale,
      sugestedPrice: sugestedPrice ?? this.sugestedPrice,
      typeProduct: typeProduct ?? this.typeProduct,
      quantityUvCaja: quantityUvCaja ?? this.quantityUvCaja,
      weightUnit: weightUnit ?? this.weightUnit,
      orderi: orderi ?? this.orderi,
    );
  }
}
