import 'dart:convert';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:multi/common/constant.dart';
import 'package:multi/common/isar_manager.dart';
import 'package:multi/common/response_data.dart';
import 'package:multi/core/app_constant_messages.dart';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:multi/models/isar/product.dart';
import 'package:multi/models/isar/product_range_price.dart';
part 'ajustes_state.dart';

class AjustesFormCubit extends Cubit<AjustesFormState> {
  AjustesFormCubit() : super(const AjustesFormState());

  void chanheTemplate(String value) {
    emit(state.copyWith(template: value));
  }

  Future<ResponseData> onChargeCloudToLocalDB(BuildContext context) async {
    Isar isar = IsarManager().isar;

    try {
      final productcount = await isar.products.count();
      debugPrint('productcountBefore: $productcount');

      final productsSupabase =
          await supabase.from('products_order').select('*');

      if (productcount == 0) {
        for (var element in productsSupabase) {
          Product product = Product();
          product.item = element['id'].toString();
          product.name = element['name'];
          product.weight = double.parse(element['weight'].toString());
          product.imagePath = changeSuffix(element['imagePath'].toString());
          product.brand = element['brand'];
          product.category = element['category'];
          product.subCategory = element['subCategory'];
          product.presentation = element['presentation'];
          product.unitMeasurement = element['unitMeasurement'];
          product.price = double.parse(element['price'].toString());
          product.sugestedPrice =
              double.parse(element['sugestedPrice'].toString());
          product.priceWithInvoice = double.parse(element['price']
              .toString()); // todo change price invoice desde el excel
          product.quantity = element['quantity'];
          product.quantityUvCaja = element['quantityUvCaja'] ?? 0;
          product.weightUnit = double.parse(element['weightUnit'] != null
              ? element['weightUnit'].toString()
              : '0');
          product.orderi = int.parse(element['orderi'].toString());
          saveProductInToDb(product, isar);
        }
      }
      final productcountAfter = await isar.products.count();
      debugPrint('productcountAfter: $productcountAfter');
      return ResponseData(true, AppConstantMessage.success);
    } catch (e) {
      return ResponseData(false, AppConstantMessage.errorImageCompresed);
    }
  }

  Future<void> saveProductInToDb(Product product, Isar isar) async {
    isar.writeTxnSync<int>(() => isar.products.putSync(product));
  }

  String nameImageDefaultIfNotExist(String nameImageSupabase) {
    String imageDefault = 'archer_c.jpg';
    final inputDir = Directory('assets/images_multi_compresed');
    final List<FileSystemEntity> files = inputDir.listSync();
    bool existImage = false;
    for (var file in files) {
      if (file is File && file.path.contains(nameImageSupabase)) {
        existImage = true;
        break;
      }
    }
    return existImage ? nameImageSupabase : imageDefault;
  }

  Future<ResponseData> compressImage(BuildContext context) async {
    try {
      final outputDir = Directory('/storage/emulated/0/DCIM/compressed_images');
      if (!outputDir.existsSync()) {
        outputDir.createSync(recursive: true);
      }

      final assetManifest = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(assetManifest);

      final List<String> imagePaths = manifestMap.keys
          .where(
              (String key) => key.contains('assets/') && key.endsWith('.png'))
          .toList();

      if (!outputDir.existsSync()) {
        outputDir.createSync(recursive: true);
      }

      debugPrint('Origin: ${imagePaths.length}');
      for (var path in imagePaths) {
        final ByteData data = await rootBundle.load(path);
        final buffer = data.buffer;
        final file = File('${outputDir.path}/${path.split('/').last}');
        await file.writeAsBytes(
            buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));

        // Agrega un sufijo al nombre del archivo comprimido
        final compressedFile = await FlutterImageCompress.compressAndGetFile(
          file.absolute.path,
          '${outputDir.path}/${file.uri.pathSegments.last.split('.').first}_c.jpg',
          quality: 70, // Ajusta la calidad según tus necesidades
        );
        debugPrint('Compressed: ${compressedFile?.path}');
      }

      final List<FileSystemEntity> outFiles = outputDir.listSync();
      debugPrint('target compressed: ${outFiles.length}');

      return ResponseData(true, AppConstantMessage.success);
    } catch (e) {
      debugPrint('Error: $e');
      return ResponseData(false, AppConstantMessage.errorImageCompresed);
    }
  }

  Future<ResponseData> cleanDb() async {
    Isar isar = IsarManager().isar;
    await isar.writeTxn(() => isar.clear());
    return ResponseData(true, AppConstantMessage.success);
  }

  Future<ResponseData> importProductRangePrice(BuildContext context) async {
    Isar isar = IsarManager().isar;
    try {
      final productcount = await isar.productRangePrices.count();
      debugPrint('productcountBefore: $productcount');
      final productsSupabase =
          await supabase.from('product_range_price').select('*');
      if (productcount == 0) {
        for (var element in productsSupabase) {
          ProductRangePrice productRangePrice = ProductRangePrice();
          productRangePrice.itemId = int.parse(element['item_id'].toString());
          productRangePrice.group = int.parse(element['group'].toString());
          productRangePrice.price = double.parse(element['price'].toString());
          productRangePrice.rangeA = int.parse(element['range_a'].toString());
          productRangePrice.rangeB = int.parse(element['range_b'].toString());
          productRangePrice.discount =
              double.parse(element['discount'].toString());
          productRangePrice.boxPrice =
              double.parse(element['box_price'].toString());
          productRangePrice.unitPrice =
              double.parse(element['unit_price'].toString());
          saveProductRangePriceInToDb(productRangePrice, isar);
        }
      }
      final productcountAfter = await isar.productRangePrices.count();
      debugPrint('productcountAfter: $productcountAfter');
      return ResponseData(true, AppConstantMessage.success);
    } catch (e) {
      return ResponseData(false, AppConstantMessage.errorImageCompresed);
    }
  }

  Future<void> saveProductRangePriceInToDb(
      ProductRangePrice product, Isar isar) async {
    isar.writeTxnSync<int>(() => isar.productRangePrices.putSync(product));
  }

  String changeSuffix(String imagePath) {
    // Obtener el nombre del archivo sin la extensión
    String fileNameWithoutExtension = imagePath.split('.').first;

    // Agregar el nuevo sufijo y la nueva extensión
    String newFileName = '${fileNameWithoutExtension}_c.jpg';

    return newFileName;
  }
}
