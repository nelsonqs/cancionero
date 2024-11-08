import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi/common/image_item.dart';
import 'package:multi/common/product_data_base.dart';
import 'package:multi/features/products/presentation/cubit/list_item_form_cubit.dart';
import 'package:multi/features/widgets/inputs/custom_card.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listCubit = context.watch<ListItemFormCubit>();
    List<ImageItem> imagesBD = ProductDataBase().images;
    Image imageItem = Image.asset('assets/archer_c.jpg');
    return Scaffold(
      body: BlocBuilder<ListItemFormCubit, ListItemFormState>(
        builder: (context, state) {
          if (state.items.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              final item = state.items[index];
              for (var index in imagesBD) {
                if (index.imagePath == item.imagePath) {
                  imageItem = index.imageItem;
                  break;
                }
              }
              return CustomCard(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: imageItem,
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 26, 12, 153),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          splashRadius: 10.0,
                          onPressed: () {
                            if (item.quantity > 0) {
                              listCubit.removeQuantity(item.id);
                            }
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          item.quantitySale.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          splashRadius: 10.0,
                          onPressed: () {
                            listCubit.addQuantity(item.id);
                          },
                          icon: const Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  title: Text(item.name),
                  subtitle: Text('Price: \$${item.price}'));
            },
          );
        },
      ),
    );
  }
}
