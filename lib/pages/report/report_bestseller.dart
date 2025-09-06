import 'package:collection/collection.dart';
import 'package:due_kasir/controller/report_controller.dart';
import 'package:due_kasir/model/penjualan_model.dart';
import 'package:due_kasir/pages/report/report_bestseller_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:signals/signals_flutter.dart';

class ReportBestSeller extends HookWidget {
  final double width;
  const ReportBestSeller({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final report = reportController.report.watch(context);
    final bestSellerItems = computed(() {
      final reportValue = report.value;
      final Map<int, ProductItemModel> itemsMap = {};
      if (reportValue != null) {
        for (final penjualan in reportValue) {
          for (final item in penjualan.items) {
            if (item.id != null) {
              if (itemsMap.containsKey(item.id)) {
                final existing = itemsMap[item.id]!;
                existing.quantity =
                    (existing.quantity ?? 0) + (item.quantity ?? 0);
              } else {
                itemsMap[item.id!] = ProductItemModel.fromJson(item.toJson());
              }
            }
          }
        }
      }
      return itemsMap.values.toList();
    });

    final theme = ShadTheme.of(context);
    final items = bestSellerItems.watch(context);
    return ShadCard(
      width: width,
      title: const Text('Best Seller'),
      description: const Text('Items based on how many items sold'),
      child: Column(
        children: [
          const SizedBox(height: 16),
          ...items
              .sorted((a, b) => (b.quantity ?? 0).compareTo(a.quantity ?? 0))
              .take(10)
              .map(
                (n) => Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.only(top: 4),
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(n.nama ?? '', style: theme.textTheme.small),
                                const SizedBox(height: 4),
                                Text(' ${n.quantity ?? 0} Sold',
                                    style: theme.textTheme.muted),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                  ],
                ),
              ),
          ShadButton(
            width: double.infinity,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReportBestSellerAll(items: items)),
              );
            },
            child: const Text('See All'),
          ),
        ],
      ),
    );
  }
}
