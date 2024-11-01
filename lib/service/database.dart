import 'package:brick_core/core.dart';
import 'package:collection/collection.dart';
import 'package:due_kasir/brick/model/auth_model.dart';
import 'package:due_kasir/brick/model/customer.model.dart';
import 'package:due_kasir/brick/model/due_payment.model.dart';
import 'package:due_kasir/brick/model/expenses.model.dart';
import 'package:due_kasir/brick/model/item.model.dart';
import 'package:due_kasir/brick/model/penjualan.model.dart';
import 'package:due_kasir/brick/model/presence.model.dart';
import 'package:due_kasir/brick/model/rent.model.dart';
import 'package:due_kasir/brick/model/rent_item.model.dart';
import 'package:due_kasir/brick/model/salary.model.dart';
import 'package:due_kasir/brick/model/store.model.dart';
import 'package:due_kasir/brick/model/user.model.dart';
import 'package:due_kasir/brick/repository.dart';

class Database {
  // Auth Local
  Future<void> loginUser(AuthModel val) async {
    // final isar = await db;
    // isar.writeTxnSync<int>(() => isar.authModels.putSync(val));
  }

  Future<void> changeUser(AuthModel val) async {
    // final isar = await db;
    // isar.writeTxn(() async {
    //   await isar.authModels.put(val);
    //   await val.user.save();
    // });
  }

  // User
  Future<AuthModel?> authUser() async {
    // final isar = await db;
    // IsarCollection<AuthModel> authCollection = isar.collection<AuthModel>();
    // final users = await authCollection.where().findAll();
    // getIt.get<SellingController>().kasir.value = users.first.user.value;
    // return users.first;
    return null;
  }

  Future<void> addNewUser(UserModel val) async {
    Repository().upsert(val);
  }

  Future<void> deleteUser(UserModel val) async {
    Repository().delete(val);
  }

  Future<void> updateUser(UserModel val) async {
    Repository().upsert(val);
  }

  Future<List<UserModel>> getUsers({String? name}) async {
    final query = Query(where: [Where('nama').contains(name)]);
    final users = await Repository().get<UserModel>(query: query);
    return users;
  }

  Future<UserModel?> getUserById(int id) async {
    final query = Query(where: [Where('id').isExactly(id)]);
    final users = await Repository().get<UserModel>(query: query);
    return users.first;
  }

  // Customer
  Future<void> addNewCustomer(CustomerModel val) async {
    await Repository().upsert(val);
  }

  Future<void> deleteCustomer(CustomerModel val) async {
    await Repository().delete(val);
  }

  Future<void> updateCustomer(CustomerModel val) async {
    await Repository().upsert(val);
  }

  Future<List<CustomerModel>> getCustomers({String? name}) async {
    final query = Query(where: [Where('nama').contains(name)]);
    final customer = await Repository().get<CustomerModel>(query: query);
    return customer;
  }

  Future<CustomerModel?> getCustomerById(int id) async {
    final query = Query(where: [Where('id').isExactly(id)]);
    final customers = await Repository().get<CustomerModel>(query: query);
    return customers.first;
  }

  // inventory
  Future<void> addInventory(ItemModel val) async {
    await Repository().upsert(val);
  }

  Future<void> addAllInventory(List<ItemModel> vals) async {
    for (var val in vals) {
      await Repository().upsert(val);
    }
  }

  Future<void> deleteInventory(ItemModel val) async {
    await Repository().delete(val);
  }

  Future<void> updateInventory(ItemModel val) async {
    await Repository().upsert(val);
  }

  Future<List<ItemModel>> getInventorys({String? value}) async {
    if (value == null || value.isEmpty) {
      return await Repository().get<ItemModel>();
    }
    final query = Query(where: [Where('nama').contains(value)]);
    return await Repository().get<ItemModel>(query: query);
  }

  Future<List<ItemModel>> searchInventorys({String? value}) async {
    final query = Query(
        where: [Where('nama').contains(value), Where('code').contains(value)]);
    return await Repository().get<ItemModel>(query: query);
  }

  Future<ItemModel?> searchByBarcode(String value) async {
    final query = Query(where: [Where('code').contains(value)]);
    final items = await Repository().get<ItemModel>(query: query);
    return items.first;
  }

  Future<List<ItemModel>> getOutStock() async {
    final query = Query(where: [Where('code').isLessThan(1)]);
    final items = await Repository().get<ItemModel>(query: query);
    return items;
  }

  // sales
  Future<void> addPenjualan(PenjualanModel val) async {
    await Repository().upsert(val);
  }

  Future<void> removePenjualan(PenjualanModel val) async {
    await Repository().delete(val);
  }

  Future<List<PenjualanModel>> getReport(
      {required DateTime start, required DateTime end}) async {
    final query = Query(where: [
      Where('createdAt').isBetween(
        start.copyWith(hour: 0, minute: 0, second: 0),
        end.copyWith(hour: 23, minute: 59, second: 59),
      )
    ]);
    return await Repository().get<PenjualanModel>(query: query);
  }

  Future<List<PenjualanModel>> getReportById({
    required DateTime start,
    required DateTime end,
    int? userId,
  }) async {
    final query = Query(where: [
      Where('createdAt').isBetween(
        start.copyWith(hour: 0, minute: 0, second: 0),
        end.copyWith(hour: 23, minute: 59, second: 59),
      ),
      Where('kasir').isExactly(userId ?? 0)
    ]);
    return await Repository().get<PenjualanModel>(query: query);
  }

  Future<List<PenjualanModel>> getReportToday() async {
    final query = Query(where: [
      Where('createdAt').isBetween(
          DateTime.now().copyWith(hour: 0, minute: 0, second: 0),
          DateTime.now().copyWith(hour: 23, minute: 59, second: 59))
    ]);
    return await Repository().get<PenjualanModel>(query: query);
  }

  Future<List<PenjualanModel>> getReportYesterday() async {
    final query = Query(where: [
      Where('createdAt').isBetween(
          DateTime.now()
              .subtract(const Duration(days: 1))
              .copyWith(hour: 0, minute: 0, second: 0),
          DateTime.now()
              .subtract(const Duration(days: 1))
              .copyWith(hour: 23, minute: 59, second: 59))
    ]);
    return await Repository().get<PenjualanModel>(query: query);
  }

  Future<Map<int, List<PenjualanModel>>> getSalesByUser() async {
    final items = await Repository().get<PenjualanModel>();

    final Map<int, List<PenjualanModel>> listOfOrders =
        items.groupListsBy((i) => i.kasir);

    return listOfOrders;
  }

  Future<Map<DateTime, List<PenjualanModel>>> getSalesByDate(
      {required DateTime start, required DateTime end}) async {
    final query = Query(where: [
      Where('createdAt').isBetween(
          start.copyWith(hour: 0, minute: 0, second: 0),
          end.copyWith(hour: 23, minute: 59, second: 59))
    ]);
    List<PenjualanModel> items =
        await Repository().get<PenjualanModel>(query: query);

    final Map<DateTime, List<PenjualanModel>> listOfOrders = items.groupListsBy(
        (order) => DateTime(
            order.createdAt.year, order.createdAt.month, order.createdAt.day));

    return listOfOrders;
  }

  Future<List<PenjualanModel>> getReportAll() async {
    return await Repository().get<PenjualanModel>();
  }

  Future<void> addStore(StoreModel val) async {
    await Repository().upsert(val);
  }

  Future<StoreModel?> getStore() async {
    final store = await Repository().get<StoreModel>();
    return store.first;
  }

  // presense
  Future<void> addPresense(PresenceModel val) async {
    await Repository().upsert(val);
  }

  Future<List<PresenceModel>> getPresense(
      {required DateTime start, required DateTime end}) async {
    final query = Query(where: [
      Where('createdAt').isBetween(
          start.copyWith(hour: 0, minute: 0, second: 0),
          end.copyWith(hour: 23, minute: 59, second: 59))
    ]);
    return await Repository().get<PresenceModel>(query: query);
  }

  // rent item
  Future<void> addRentItem(RentItemModel val) async {
    await Repository().upsert(val);
  }

  Future<List<RentItemModel>> getRentItem() async {
    return await Repository().get<RentItemModel>();
  }

  Future<RentItemModel?> getRentItemById(int id) async {
    final query = Query(where: [Where('createdAt').isExactly(id)]);
    final items = await Repository().get<RentItemModel>(query: query);
    return items.first;
  }

  Future<void> deleteRentItem(RentItemModel val) async {
    await Repository().delete(val);
  }

  Future<void> updateRentItem(RentItemModel val) async {
    await Repository().upsert(val);
  }

  // rent
  Future<void> addRent(RentModel val) async {
    await Repository().upsert(val);
  }

  Future<List<RentModel>> getRent() async {
    return await Repository().get<RentModel>();
  }

  Future<void> updateRent(RentModel val) async {
    await Repository().upsert(val);
  }

  Future<List<RentModel>> getRentRevenue() async {
    return await Repository().get<RentModel>();
  }

  // expenses
  Future<void> addExpenses(ExpensesModel val) async {
    await Repository().upsert(val);
  }

  Future<void> deleteExpenses(ExpensesModel val) async {
    await Repository().delete(val);
  }

  Future<List<ExpensesModel>> getExpenses(
      {required DateTime start, required DateTime end}) async {
    final query = Query(where: [
      Where('createdAt').isBetween(
          start.copyWith(hour: 0, minute: 0, second: 0),
          end.copyWith(hour: 23, minute: 59, second: 59))
    ]);
    return await Repository().get<ExpensesModel>(query: query);
  }

  // Salary
  Future<void> addSalary(SalaryModel val) async {
    await Repository().upsert(val);
  }

  Future<List<SalaryModel>> getSalary() async {
    return await Repository().get<SalaryModel>();
  }

  Future<void> updateSalary(SalaryModel val) async {
    await Repository().upsert(val);
  }

  Future<void> deleteSalary(SalaryModel val) async {
    await Repository().delete(val);
  }

  // due payment
  Future<void> addDuePayment(DuePaymentModel val) async {
    await Repository().upsert(val);
  }

  Future<void> deleteDuePayment(DuePaymentModel val) async {
    await Repository().delete(val);
  }

  Future<void> updateDuePayment(DuePaymentModel val) async {
    await Repository().upsert(val);
  }

  Future<List<DuePaymentModel>> getDuePayments({String? value}) async {
    final query = Query(where: [Where('name').contains(value)]);
    return await Repository().get<DuePaymentModel>(query: query);
  }
}
