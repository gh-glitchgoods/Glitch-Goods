import 'package:gg_admin/constants.dart';
import 'package:gg_admin/utils/ui_helper.dart';
import 'package:gg_admin/utils/utils.dart';
import 'package:gg_admin/widgets/custom_section_header.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/eos_icons.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final double totalSales = 1245872;
  final int currentOrders = 140;

  //final int packedOrders = 0;
  // you can add more insight variables here

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String formattedSales = Utils.formatRupees(totalSales);

    return InkWell(
      onTap: () {},
      child: Container(
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
                icon: EosIcons.admin,
                text: 'Admin Dashboard',
              ),
              vGap10,

              ///Total Sales Display
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total Sales:',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        TextSpan(
                          text: formattedSales,
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              vGap4,

              /// Current Orders (To Pack)
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      //Current order list from firebase.
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Current Orders (To Pack) : ',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          TextSpan(
                            text: '$currentOrders',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              vGap4,
            ],
          ),
        ),
      ),
    );
  }
}
