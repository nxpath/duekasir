import 'package:due_kasir/pages/drawer.dart';
import 'package:due_kasir/pages/inventory/inventory_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('Inventory'),
        centerTitle: false,
      ),
      body: const InventoryList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/inventory/form'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
