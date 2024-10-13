import 'package:destion_innovations_task/core/models/product_model.dart';
import 'package:destion_innovations_task/core/utils/app_images.dart';
import 'package:destion_innovations_task/core/utils/consts.dart';
import 'package:destion_innovations_task/core/utils/no_bounce_scroll_behavior.dart';
import 'package:destion_innovations_task/core/utils/styles.dart';
import 'package:destion_innovations_task/features/home_screen/home_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const HomeScreenAppBar(),
            const Gap(20),
            Expanded(
              child: ScrollConfiguration(
                behavior: NoBounceScrollBehavior(),
                child: GridView.builder(
                  padding: const EdgeInsets.only(bottom: 20),
                  itemCount: Consts.products.length,
                  // clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return CardItem(
                      product: Consts.products[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: AppImages.product,
              ),
              const Gap(10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    product.name,
                    style: Styles.style16Bold(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: Styles.style16SemiBold(context),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: const Icon(
                          Icons.add_shopping_cart_rounded,
                          color: Color(0xffFFBFA9),
                        ),
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: const Color(0xffFFBFA9),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        product.discount != null
            ? Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    '%${product.discount} OFF',
                    style:
                        Styles.style14Med(context).copyWith(color: Colors.red),
                  ),
                ),
              )
            : const Gap(0)
      ],
    );
  }
}
