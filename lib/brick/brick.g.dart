// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_core/query.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_sqlite/db.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_sqlite/brick_sqlite.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_supabase/brick_supabase.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:due_kasir/brick/model/item_salary.model.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:due_kasir/brick/model/product_item.model.dart';// GENERATED CODE DO NOT EDIT
// ignore: unused_import
import 'dart:convert';
import 'package:brick_sqlite/brick_sqlite.dart' show SqliteModel, SqliteAdapter, SqliteModelDictionary, RuntimeSqliteColumnDefinition, SqliteProvider;
import 'package:brick_supabase/brick_supabase.dart' show SupabaseProvider, SupabaseModel, SupabaseAdapter, SupabaseModelDictionary;
// ignore: unused_import, unused_shown_name
import 'package:brick_offline_first/brick_offline_first.dart' show RuntimeOfflineFirstDefinition;
// ignore: unused_import, unused_shown_name
import 'package:sqflite_common/sqlite_api.dart' show DatabaseExecutor;

import '../brick/model/store.model.dart';
import '../brick/model/expenses.model.dart';
import '../brick/model/rent.model.dart';
import '../brick/model/item.model.dart';
import '../brick/model/salary.model.dart';
import '../brick/model/rent_item.model.dart';
import '../brick/model/presence.model.dart';
import '../brick/model/due_payment.model.dart';
import '../brick/model/customer.model.dart';
import '../brick/model/user.model.dart';
import '../brick/model/request.model.dart';
import '../brick/model/penjualan.model.dart';
import '../brick/model/product_item.model.dart';
import '../brick/model/item_salary.model.dart';

part 'adapters/store_model_adapter.g.dart';
part 'adapters/expenses_model_adapter.g.dart';
part 'adapters/rent_model_adapter.g.dart';
part 'adapters/item_model_adapter.g.dart';
part 'adapters/salary_model_adapter.g.dart';
part 'adapters/rent_item_model_adapter.g.dart';
part 'adapters/presence_model_adapter.g.dart';
part 'adapters/due_payment_model_adapter.g.dart';
part 'adapters/customer_model_adapter.g.dart';
part 'adapters/user_model_adapter.g.dart';
part 'adapters/request_model_adapter.g.dart';
part 'adapters/penjualan_model_adapter.g.dart';
part 'adapters/product_item_model_adapter.g.dart';
part 'adapters/item_salary_adapter.g.dart';

/// Supabase mappings should only be used when initializing a [SupabaseProvider]
final Map<Type, SupabaseAdapter<SupabaseModel>> supabaseMappings = {
  StoreModel: StoreModelAdapter(),
  ExpensesModel: ExpensesModelAdapter(),
  RentModel: RentModelAdapter(),
  ItemModel: ItemModelAdapter(),
  SalaryModel: SalaryModelAdapter(),
  RentItemModel: RentItemModelAdapter(),
  PresenceModel: PresenceModelAdapter(),
  DuePaymentModel: DuePaymentModelAdapter(),
  CustomerModel: CustomerModelAdapter(),
  UserModel: UserModelAdapter(),
  RequestModel: RequestModelAdapter(),
  PenjualanModel: PenjualanModelAdapter(),
  ProductItemModel: ProductItemModelAdapter(),
  ItemSalary: ItemSalaryAdapter()
};
final supabaseModelDictionary = SupabaseModelDictionary(supabaseMappings);

/// Sqlite mappings should only be used when initializing a [SqliteProvider]
final Map<Type, SqliteAdapter<SqliteModel>> sqliteMappings = {
  StoreModel: StoreModelAdapter(),
  ExpensesModel: ExpensesModelAdapter(),
  RentModel: RentModelAdapter(),
  ItemModel: ItemModelAdapter(),
  SalaryModel: SalaryModelAdapter(),
  RentItemModel: RentItemModelAdapter(),
  PresenceModel: PresenceModelAdapter(),
  DuePaymentModel: DuePaymentModelAdapter(),
  CustomerModel: CustomerModelAdapter(),
  UserModel: UserModelAdapter(),
  RequestModel: RequestModelAdapter(),
  PenjualanModel: PenjualanModelAdapter(),
  ProductItemModel: ProductItemModelAdapter(),
  ItemSalary: ItemSalaryAdapter()
};
final sqliteModelDictionary = SqliteModelDictionary(sqliteMappings);
