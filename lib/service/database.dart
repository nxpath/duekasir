import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:due_kasir/model/auth_model.dart';
import 'package:due_kasir/model/customer_model.dart';
import 'package:due_kasir/model/due_payment_model.dart';
import 'package:due_kasir/model/expenses_model.dart';
import 'package:due_kasir/model/item_model.dart';
import 'package:due_kasir/model/penjualan_model.dart';
import 'package:due_kasir/model/presence_model.dart';
import 'package:due_kasir/model/rent_item_model.dart';
import 'package:due_kasir/model/rent_model.dart';
import 'package:due_kasir/model/salary_model.dart';
import 'package:due_kasir/model/store_model.dart';
import 'package:due_kasir/model/user_model.dart';
import 'package:due_kasir/service/supabase_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final SupabaseHelper _supabaseHelper = SupabaseHelper();
  static final SupabaseClient supabase = Supabase.instance.client;

  // Auth Local
  Future<void> loginUser(AuthModel val) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('authModel', jsonEncode(val));
  }

  Future<void> changeUser(AuthModel val) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('authModel', jsonEncode(val));
  }

  // User
  Future<AuthModel?> authUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? json = prefs.getString('authModel');
    if (json != null) {
      return AuthModel.fromJson(jsonDecode(json));
    } else {
      return null;
    }
  }

  Future<void> addNewUser(UserModel val) async {
    await _supabaseHelper.addUsers(val.toJson());
  }

  Future<void> deleteUser(int val) async {
    await _supabaseHelper.removeUsers(val);
  }

  Future<void> updateUser(UserModel val) async {
    await _supabaseHelper.updateUsers(val);
  }

  Future<List<UserModel>> getUsers({String? name}) async {
    return await _supabaseHelper.getUsers(name: name);
  }

  Future<UserModel?> getUserById(int id) async {
    return await _supabaseHelper.getUserById(id);
  }

  // Customer
  Future<void> addNewCustomer(CustomerModel val) async {
    await _supabaseHelper.addCustomer(val.toJson());
  }

  Future<void> deleteCustomer(int val) async {
    await _supabaseHelper.removeCustomer(val);
  }

  Future<void> updateCustomer(CustomerModel val) async {
    await _supabaseHelper.updateCustomer(val);
  }

  Future<List<CustomerModel>> getCustomers({String? name}) async {
    return await _supabaseHelper.getCustomerAll();
    // final isar = await db;
    // IsarCollection<CustomerModel> customerCollection =
    //     isar.collection<CustomerModel>();
    // final customer = customerCollection
    //     .filter()
    //     .namaContains(name ?? '', caseSensitive: false)
    //     .findAll();
    // return customer;
  }

  Future<CustomerModel?> getCustomerById(int id) async {
    return await _supabaseHelper.getCustomerById(id);
    // final isar = await db;
    // IsarCollection<CustomerModel> customerCollection =
    //     isar.collection<CustomerModel>();
    // final users = customerCollection.get(id);
    // return users;
  }

  // inventory
  Future<void> addInventory(ItemModel val) async {
    await _supabaseHelper.addInventory(val.toJson());
  }

  Future<void> addAllInventory(List<ItemModel> vals) async {
    for (var val in vals) {
      await _supabaseHelper.addInventory(val.toJson());
    }
  }

  Future<void> deleteInventory(int val) async {
    await _supabaseHelper.removeInventory(val);
  }

  Future<void> updateInventory(ItemModel val) async {
    _supabaseHelper.updateInventory(val);
  }

  Future<List<ItemModel>> getInventorys({String? value}) async {
    return await _supabaseHelper.getInventoryAll();
    // final isar = await db;
    // IsarCollection<ItemModel> inventoryCollection =
    //     isar.collection<ItemModel>();
    // return await inventoryCollection
    //     .filter()
    //     .group((q) => q
    //         .namaContains(value ?? '', caseSensitive: false)
    //         .or()
    //         .codeContains(value ?? '', caseSensitive: false))
    //     .findAll();
  }

  Future<List<ItemModel>> searchInventorys({String? value}) async {
    return await _supabaseHelper.getInventoryAll();
    // final isar = await db;
    // IsarCollection<ItemModel> inventoryCollection =
    //     isar.collection<ItemModel>();
    // final items = inventoryCollection
    //     .filter()
    //     .group((q) => q
    //         .namaContains(value ?? '', caseSensitive: false)
    //         .or()
    //         .codeContains(value ?? '', caseSensitive: false))
    //     .findAll();
    // return items;
  }

  Future<ItemModel?> searchByBarcode(String value) async {
    final res = await _supabaseHelper.getInventoryAll();
    return res.first;
    // final isar = await db;
    // IsarCollection<ItemModel> inventoryCollection =
    //     isar.collection<ItemModel>();
    // final items = await inventoryCollection
    //     .filter()
    //     .group((q) => q.codeContains(value, caseSensitive: false))
    //     .findFirst();
    // return items;
  }

  Future<List<ItemModel>> getOutStock() async {
    // TODO fix this
    return await _supabaseHelper.getInventoryAll();
    //   final isar = await db;
    //   IsarCollection<ItemModel> inventoryCollection =
    //       isar.collection<ItemModel>();
    //   final items = inventoryCollection
    //       .filter()
    //       .group((q) => q.jumlahBarangLessThan(1))
    //       .findAll();
    //   return items;
  }

  // sales
  Future<void> addPenjualan(PenjualanModel val) async {
    await _supabaseHelper.addReport(val.toJson());
  }

  Future<void> removePenjualan(int val) async {
    await _supabaseHelper.removeReport(val);
  }

  Future<List<PenjualanModel>> getReport(
      {required DateTime start, required DateTime end}) async {
    return await _supabaseHelper.getRepots(
      start: start.copyWith(hour: 0, minute: 0, second: 0),
      end: end.copyWith(hour: 23, minute: 59, second: 59),
    );
  }

  Future<List<PenjualanModel>> getReportById({
    required DateTime start,
    required DateTime end,
    int? userId,
  }) async {
    return await _supabaseHelper.getRepots(
        start: start.copyWith(hour: 0, minute: 0, second: 0),
        end: end.copyWith(hour: 23, minute: 59, second: 59),
        kasirId: userId);
  }

  Future<List<PenjualanModel>> getReportToday() async {
    return await _supabaseHelper.getRepots(
      start: DateTime.now().copyWith(hour: 0, minute: 0, second: 0),
      end: DateTime.now().copyWith(hour: 23, minute: 59, second: 59),
    );
  }

  Future<List<PenjualanModel>> getReportYesterday() async {
    return await _supabaseHelper.getRepots(
      start: DateTime.now()
          .subtract(const Duration(days: 1))
          .copyWith(hour: 0, minute: 0, second: 0),
      end: DateTime.now()
          .subtract(const Duration(days: 1))
          .copyWith(hour: 23, minute: 59, second: 59),
    );
  }

  Future<Map<int, List<PenjualanModel>>> getSalesByUser() async {
    final items = await _supabaseHelper.getRepots();

    final Map<int, List<PenjualanModel>> listOfOrders =
        items.groupListsBy((i) => i.kasir);

    return listOfOrders;
  }

  Future<Map<DateTime, List<PenjualanModel>>> getSalesByDate(
      {required DateTime start, required DateTime end}) async {
    final items = await _supabaseHelper.getRepots(
        start: start.copyWith(hour: 0, minute: 0, second: 0),
        end: end.copyWith(hour: 23, minute: 59, second: 59));

    final Map<DateTime, List<PenjualanModel>> listOfOrders = items.groupListsBy(
        (order) => DateTime(
            order.createdAt.year, order.createdAt.month, order.createdAt.day));

    return listOfOrders;
  }

  Future<List<PenjualanModel>> getReportAll() async {
    return await _supabaseHelper.getRepots();
  }

  Future<void> addStore(StoreModel val) async {
    await _supabaseHelper.updateStore(val);
  }

  Future<StoreModel?> getStore() async {
    return await _supabaseHelper.getStore();
  }

  // presense
  Future<void> addPresense(PresenceModel val) async {
    await _supabaseHelper.addPresense(val.toJson());
  }

  Future<List<PresenceModel>> getPresense(
      {required DateTime start, required DateTime end}) async {
    // TODO filter by start and end
    return await _supabaseHelper.getPresense();
  }

  // rent item
  Future<void> addRentItem(RentItemModel val) async {
    await _supabaseHelper.addRentItem(val.toJson());
  }

  Future<List<RentItemModel>> getRentItem() async {
    return await _supabaseHelper.getRentItems();
  }

  Future<RentItemModel?> getRentItemById(int id) async {
    return await _supabaseHelper.getRentItemById(id);
    // final isar = await db;
    // IsarCollection<RentItemModel> rentItemCollection =
    //     isar.collection<RentItemModel>();
    // final rent = rentItemCollection.get(id);
    // return rent;
  }

  Future<void> deleteRentItem(int val) async {
    await _supabaseHelper.removeRentItem(val);
  }

  Future<void> updateRentItem(RentItemModel val) async {
    await _supabaseHelper.updateRentItem(val);
  }

  // rent
  Future<void> addRent(RentModel val) async {
    await _supabaseHelper.addRent(val.toJson());
  }

  Future<List<RentModel>> getRent() async {
    return await _supabaseHelper.getRent();
  }

  Future<void> updateRent(RentModel val) async {
    await _supabaseHelper.updateRent(val);
  }

  Future<List<RentModel>> getRentRevenue() async {
    return await _supabaseHelper.getRent();
    // final isar = await db;
    // IsarCollection<RentModel> rentCollection = isar.collection<RentModel>();

    // return await rentCollection.filter().paidEqualTo(true).findAll();
  }

  // expenses
  Future<void> addExpenses(ExpensesModel val) async {
    await _supabaseHelper.addExpenses(val.toJson());
  }

  Future<void> deleteExpenses(int val) async {
    await _supabaseHelper.removeExpenses(val);
  }

  Future<List<ExpensesModel>> getExpenses(
      {required DateTime start, required DateTime end}) async {
    // TODO filter by start and end date
    return await _supabaseHelper.getExpenses();
    // final isar = await db;
    // IsarCollection<ExpensesModel> expensesCollection =
    //     isar.collection<ExpensesModel>();
    // return await expensesCollection
    //     .where()
    //     .filter()
    //     .createdAtBetween(start.copyWith(hour: 0, minute: 0, second: 0),
    //         end.copyWith(hour: 23, minute: 59, second: 59))
    //     .findAll();
  }

  // Salary
  Future<void> addSalary(SalaryModel val) async {
    await _supabaseHelper.addSalary(val.toJson());
  }

  Future<List<SalaryModel>> getSalary() async {
    return await _supabaseHelper.getSalarys();
  }

  Future<void> updateSalary(SalaryModel val) async {
    await _supabaseHelper.updateSalary(val);
  }

  Future<void> deleteSalary(int val) async {
    await _supabaseHelper.removeSalary(val);
  }

  // due payment
  Future<void> addDuePayment(DuePaymentModel val) async {
    await _supabaseHelper.addDuePayment(val.toJson());
  }

  Future<void> deleteDuePayment(int val) async {
    await _supabaseHelper.removeDuePayment(val);
  }

  Future<void> updateDuePayment(DuePaymentModel val) async {
    await _supabaseHelper.updateDuePayment(val);
  }

  Future<List<DuePaymentModel>> getDuePayments({String? value}) async {
    // TODO filter by value
    return await _supabaseHelper.getDuePayment();
  }
}
