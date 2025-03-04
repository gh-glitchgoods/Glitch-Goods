import 'package:gg_admin/constants.dart';
import 'package:gg_admin/screens/home/product_controls_section/carousel_advertisements.dart';
import 'package:gg_admin/screens/home/product_controls_section/stickers.dart';
import 'package:gg_admin/screens/home/product_controls_section/t-shirt.dart';
import 'package:gg_admin/utils/ui_helper.dart';
import 'package:gg_admin/widgets/custom_product_button.dart';
import 'package:gg_admin/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/bxs.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class ProductControls extends StatelessWidget {
  const ProductControls({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Section Heading
            const GGSectionHeader(
              icon: Majesticons.shopping_bag,
              text: 'Product Controls',
            ),
            vGap16,
            /// Product Button List.
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  /// Advertisements Button
                  GGProductButton(
                    buttonIconifyString: Bxs.chart,
                    buttonText: 'Ads',
                    buttonFunction: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const CarouselAdvertisements();
                          },
                        ),
                      );
                    },
                  ),
                  hGap8,
                  /// T-Shirts Button
                  GGProductButton(
                    buttonIconifyString: Mdi.tshirt_crew,
                    buttonText: 'T-Shirts',
                    buttonFunction: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const AddShirt();
                          },
                        ),
                      );
                    },
                  ),
                  hGap8,
                  ///Stickers Button
                  GGProductButton(
                    buttonIconifyString: Bxs.sticker,
                    buttonText: 'Stickers',
                    buttonFunction: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const Stickers();
                          },
                        ),
                      );
                    },
                  ),
                  hGap8,
                ],
              ),
            ),
            vGap4,
          ],
        ),
      ),
    );
  }
}