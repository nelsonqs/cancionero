import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/features/pedidos/domain/movement.dart';
import 'package:multi/features/pedidos/domain/order.dart';
import 'package:multi/features/products/presentation/cubit/list_item_form_cubit.dart';
import 'package:multi/models/isar/person.dart';
import 'package:multi/models/isar/product.dart';
import 'package:multi/models/isar/product_order.dart';
import 'package:multi/models/item.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class CarritoScreen extends StatelessWidget {
  // Ask Get to finvar "controller"
  //final ProductController _p = Get.find<ProductController>();

  CarritoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Column widgetLoaded = const Column(
      children: [
        Icon(
          Icons.add_shopping_cart_rounded,
          size: 48.0,
        ),
        Text(
          "El Carrito está vacío.",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
    final listItems = context
        .watch<ListItemFormCubit>()
        .state
        .items
        .where((itm) => itm.quantitySale > 0);
    final p = context.watch<ListItemFormCubit>();
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        listItems.isEmpty
            ? Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.25,
                    horizontal: MediaQuery.of(context).size.width * 0.25),
                child: widgetLoaded,
              )
            : Expanded(
                flex: 4,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listItems.length,
                  itemBuilder: (context, index) {
                    final item = listItems.elementAt(index);
                    return SizedBox(
                        width: MediaQuery.of(context).size.height <
                                MediaQuery.of(context).size.width
                            ? MediaQuery.of(context).size.width * 0.45
                            : MediaQuery.of(context).size.width * 0.8,
                        child: Stack(
                          children: [
                            Card(
                                key: ValueKey(item.id),
                                margin: const EdgeInsets.all(5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.white70,
                                child: InkWell(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                flex: 1,
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  child: Image.asset(
                                                      "assets/producto.png"),
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        item.name,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        "\n${item.name}",
                                                        maxLines: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height <
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width
                                                            ? 2
                                                            : 4,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Spacer(),
                                                          Text(
                                                            'Bs. ${item.price.toStringAsFixed(2)}',
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: IconButton(
                                                icon: const Icon(Icons.remove),
                                                onPressed: () {
                                                  p.removeQuantity(item.id);
                                                },
                                                splashRadius: 80,
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                '${item.quantitySale.toString()} ',
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: IconButton(
                                                icon: const Icon(Icons.add),
                                                onPressed: () {
                                                  p.addQuantity(item.id);
                                                },
                                                splashRadius: 40,
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(4),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  p.addQuantityWithValue(
                                                      item.id, 12);
                                                },
                                                child: const Text(
                                                  "+ 12 ",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    p.addQuantityWithValue(
                                                        item.id, 6);
                                                  },
                                                  child: const Text(
                                                    "+ 6 ",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    p.addQuantityWithValue(
                                                        item.id, 3);
                                                  },
                                                  child: const Text(
                                                    "+ 3",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        )
                                      ],
                                    ))),
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  splashRadius: 20,
                                  icon:
                                      const Icon(Icons.delete_forever_outlined),
                                  color: Colors.redAccent,
                                  onPressed: () {
                                    item.inWishList = false;
                                    p.removeProductToWhiteList(item.id);
                                  },
                                ))
                          ],
                        ));
                  },
                ),
              ),
        listItems.isNotEmpty
            ? Expanded(
                flex: 2,
                child: Center(
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10))),
                    margin: const EdgeInsets.all(1),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Sub total",
                                        style: TextStyle(
                                          fontSize: 14,
                                        )),
                                    listItems.isNotEmpty
                                        ? Text(
                                            'Bs. ${p.totalWithoutDiscount.toStringAsFixed(2)}',
                                            style:
                                                const TextStyle(fontSize: 14),
                                          )
                                        : const Text('')
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Descuento",
                                        style: TextStyle(
                                          fontSize: 14,
                                        )),
                                    Text("0",
                                        style: TextStyle(
                                          fontSize: 14,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Total",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                listItems.isNotEmpty
                                    ? Text(
                                        "Bs. ${p.totalWithDiscount(0)}",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )
                                    : const Text(''),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 26, 12, 153),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        onPressed: listItems.isNotEmpty &&
                                                p.totalWithoutDiscount > 0
                                            ? () {
                                                createSale(
                                                    isSale: true,
                                                    listItems:
                                                        listItems.toList(),
                                                    context: context);
                                                p.updateDefaultvalue();
                                                final snackBar = SnackBar(
                                                  elevation: 0,
                                                  behavior:
                                                      SnackBarBehavior.floating,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  content:
                                                      AwesomeSnackbarContent(
                                                    title:
                                                        'Carrito de Compras!',
                                                    message:
                                                        'La venta se registró satisfactoriamente!',

                                                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                                    contentType:
                                                        ContentType.failure,
                                                  ),
                                                );

                                                ScaffoldMessenger.of(context)
                                                  ..hideCurrentSnackBar()
                                                  ..showSnackBar(snackBar);
                                              }
                                            : null,
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "VENDER",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 211, 107, 99),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        onPressed: listItems.isNotEmpty &&
                                                p.totalWithoutDiscount > 0
                                            ? () {
                                                createQuote(
                                                    isSale: false,
                                                    context: context);
                                                p.updateDefaultvalue();
                                                final snackBar = SnackBar(
                                                  elevation: 0,
                                                  behavior:
                                                      SnackBarBehavior.floating,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  content:
                                                      AwesomeSnackbarContent(
                                                    title:
                                                        'Carrito de Compras!',
                                                    message:
                                                        'La cotizacion se registró satisfactoriamente!',

                                                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                                    contentType:
                                                        ContentType.failure,
                                                  ),
                                                );

                                                ScaffoldMessenger.of(context)
                                                  ..hideCurrentSnackBar()
                                                  ..showSnackBar(snackBar);
                                              }
                                            : null,
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "COTIZAR",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            : const Spacer()
      ],
    )));
  }

  void createSale(
      {required bool isSale,
      required List<Item> listItems,
      required BuildContext context}) async {
    final p = context.watch<ListItemFormCubit>();
    List<ProductOrder> products = [];
    Person person = Person()
      ..fullName =
          'Cliente - ${DateFormat('ddMMyyhhmm').format(DateTime.now())}'
      ..tipoPago = ''
      ..cellPhoneNumber = '0'
      ..businessName = 's/n'
      ..invoiceName = 's/n'
      ..contactName = 's/n'
      ..address = 's/n'
      ..latitud = 0
      ..longitud = 0
      ..discount = 0
      ..codeClient = 's/n'
      ..invoiceNumber = '0';

    for (var element in listItems) {
      ProductOrder product = ProductOrder();
      product.item = element.id.toString();
      product.name = element.name;
      product.imagePath = element.imagePath;
      product.brand = element.brand;
      product.category = element.category;
      product.subCategory = element.subCategory;
      product.presentation = element.presentation;
      product.unitMeasurement = element.unitMeasurement;
      product.price = element.price;
      product.sugestedPrice = element.sugestedPrice;
      product.quantity = element.quantity;
      product.inWishList = element.inWishList;
      product.quantitySale = element.quantitySale;
      product.weight = element.weightUnit;
      product.subTotalWeight = (element.weightUnit * element.quantitySale);
      product.subTotal = (element.quantitySale * element.price);
      p.removeQuantityByMovements(element.id, element.quantitySale);
      products.add(product);
      // guardamos el movimiento por que es venta
    }
    Order order = Order()
      ..products = products
      ..client = person
      ..createOn = DateTime.now()
      ..isSale = isSale
      ..dateOnSale = DateTime.now()
      ..codeOrder = "CAMBIAR"
      ..totalWithoutDiscount = (p.totalWithoutDiscount)
      ..totalWithDiscount = person.discount > 0
          ? (double.parse(p.totalWithDiscount(person.discount)))
          : (p.totalWithoutDiscount)
      ..totalWeightProducts = (p.totalWeightReport(products))
      ..discount = person.discount
      ..obs = 'Venta';
    // guaradamos la orden de venta
    int orderId = await saveOrder(order);

    // como es venta se debe crear movimientos de los items vendidados bajo el order id
    saveMovement(orderId, products);
    // debemos actualizar cantidad en el producto, es decir disminuir quantity por item
    updateProduct(order.products);
  }

  void createQuote(
      {required bool isSale, required BuildContext context}) async {
    final listItems = context.watch<ListItemFormCubit>().state.items;
    final p = context.watch<ListItemFormCubit>();
    List<ProductOrder> products = [];
    Person person = Person()
      ..fullName =
          'Cliente - ${DateFormat('ddMMyyhhmm').format(DateTime.now())}'
      ..tipoPago = ''
      ..cellPhoneNumber = '0'
      ..businessName = 's/n'
      ..invoiceName = 's/n'
      ..contactName = 's/n'
      ..address = 's/n'
      ..latitud = 0
      ..longitud = 0
      ..discount = 0
      ..codeClient = 's/n'
      ..invoiceNumber = '0';

    for (var element in listItems) {
      ProductOrder product = ProductOrder();
      product.item = element.id.toString();
      product.name = element.name;
      product.imagePath = element.imagePath;
      product.brand = element.brand;
      product.category = element.category;
      product.subCategory = element.subCategory;
      product.presentation = element.presentation;
      product.unitMeasurement = element.unitMeasurement;
      product.price = element.price;
      product.sugestedPrice = element.sugestedPrice;
      product.quantity = element.quantity;
      product.weight = element.weightUnit;
      product.subTotalWeight = (element.weightUnit * element.quantitySale);
      product.inWishList = element.inWishList;
      product.quantitySale = element.quantitySale;
      product.subTotal = (element.quantitySale * element.price);
      products.add(product);
    }

    Order order = Order()
      ..products = products
      ..client = person
      ..createOn = DateTime.now()
      ..isSale = isSale
      ..totalWithoutDiscount = (p.totalWithoutDiscount)
      ..totalWithDiscount = person.discount > 0
          ? (double.parse(p.totalWithDiscount(person.discount)))
          : (p.totalWithoutDiscount)
      ..dateOnSale = DateTime.now()
      ..codeOrder = "CAMBIAR"
      ..totalWeightProducts = (p.totalWeightReport(products))
      ..discount = person.discount
      ..obs = 'Cotizar';
    int value = await saveOrder(order);
    debugPrint(value.toString());
  }

  Future<int> saveOrder(Order newTeacher) async {
    return IsarManager()
        .isar
        .writeTxnSync<int>(() => IsarManager().isar.orders.putSync(newTeacher));
  }

  Future<void> saveMovement(int orderId, List<ProductOrder> products) async {
    await IsarManager().isar.writeTxn(() async {
      for (var element in products) {
        Movement movement = Movement();
        movement.dateMovement = DateTime.now();
        movement.invoiceNumber = 's/n';
        movement.invoiceName = 's/n';
        movement.item = element.item;
        movement.name = element.name;

        movement.brand = element.brand;
        movement.category = element.category;
        movement.subCategory = element.subCategory;
        movement.presentation = element.presentation;

        movement.obs = 'Venta';
        movement.orderId = orderId.toString();
        movement.price = element.price;
        movement.quantity = element.quantitySale;
        movement.quantitySale = element.quantitySale; //todo fix
        movement.stock = element.quantity - element.quantitySale;
        movement.imagePath = element.imagePath;
        movement.subTotal = (element.price * element.quantitySale);
        movement.typeMovement = 'S';
        movement.unitMeasurement = element.unitMeasurement;
        await IsarManager().isar.movements.put(movement);
      }
    });
  }

  Future<void> updateProduct(List<ProductOrder>? products) async {
    final productCollection = IsarManager().isar.products;
    List<Product> productDB = await productCollection.where().findAll();

    await IsarManager().isar.writeTxn(() async {
      for (var element in products!) {
        for (var prod in productDB) {
          if (element.item == prod.item) {
            prod.quantity = prod.quantity - element.quantitySale;
            await IsarManager().isar.products.put(prod);
            break;
          }
        }
      }
    });
  }

  bool verifyExistImage(String assetPath) {
    try {
      // Intenta cargar el asset para ver si existe
      rootBundle.load(assetPath);
      return true;
    } catch (e) {
      // Si hay un error al intentar cargar el asset, asumimos que no existe
      return false;
    }
  }
}
