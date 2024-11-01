// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<DuePaymentModel> _$DuePaymentModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return DuePaymentModel(
      name: data['name'] as String,
      invoice: data['invoice'] as String?,
      itemName: data['itemName'] as String?,
      itemAmount: data['itemAmount'] as int,
      amount: data['amount'] as int,
      status: data['status'] as String,
      note: data['note'] as String?,
      dateIn: DateTime.parse(data['dateIn'] as String),
      dueDate: DateTime.parse(data['dueDate'] as String),
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.tryParse(data['createdAt'] as String),
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$DuePaymentModelToSupabase(
    DuePaymentModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'name': instance.name,
    'invoice': instance.invoice,
    'itemName': instance.itemName,
    'itemAmount': instance.itemAmount,
    'amount': instance.amount,
    'status': instance.status,
    'note': instance.note,
    'dateIn': instance.dateIn.toIso8601String(),
    'dueDate': instance.dueDate.toIso8601String(),
    'createdAt': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

Future<DuePaymentModel> _$DuePaymentModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return DuePaymentModel(
      name: data['name'] as String,
      invoice: data['invoice'] == null ? null : data['invoice'] as String?,
      itemName: data['item_name'] == null ? null : data['item_name'] as String?,
      itemAmount: data['item_amount'] as int,
      amount: data['amount'] as int,
      status: data['status'] as String,
      note: data['note'] == null ? null : data['note'] as String?,
      dateIn: DateTime.parse(data['date_in'] as String),
      dueDate: DateTime.parse(data['due_date'] as String),
      createdAt: data['created_at'] == null
          ? null
          : data['created_at'] == null
              ? null
              : DateTime.tryParse(data['created_at'] as String),
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$DuePaymentModelToSqlite(DuePaymentModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'name': instance.name,
    'invoice': instance.invoice,
    'item_name': instance.itemName,
    'item_amount': instance.itemAmount,
    'amount': instance.amount,
    'status': instance.status,
    'note': instance.note,
    'date_in': instance.dateIn.toIso8601String(),
    'due_date': instance.dueDate.toIso8601String(),
    'created_at': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

/// Construct a [DuePaymentModel]
class DuePaymentModelAdapter
    extends OfflineFirstWithSupabaseAdapter<DuePaymentModel> {
  DuePaymentModelAdapter();

  @override
  final supabaseTableName = 'due_payment';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'name': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'name',
    ),
    'invoice': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'invoice',
    ),
    'itemName': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'itemName',
    ),
    'itemAmount': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'itemAmount',
    ),
    'amount': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'amount',
    ),
    'status': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'status',
    ),
    'note': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'note',
    ),
    'dateIn': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'dateIn',
    ),
    'dueDate': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'dueDate',
    ),
    'createdAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'createdAt',
    ),
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    )
  };
  @override
  final ignoreDuplicates = false;
  @override
  final uniqueFields = {'id'};
  @override
  final Map<String, RuntimeSqliteColumnDefinition> fieldsToSqliteColumns = {
    'primaryKey': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: '_brick_id',
      iterable: false,
      type: int,
    ),
    'name': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'name',
      iterable: false,
      type: String,
    ),
    'invoice': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'invoice',
      iterable: false,
      type: String,
    ),
    'itemName': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'item_name',
      iterable: false,
      type: String,
    ),
    'itemAmount': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'item_amount',
      iterable: false,
      type: int,
    ),
    'amount': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'amount',
      iterable: false,
      type: int,
    ),
    'status': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'status',
      iterable: false,
      type: String,
    ),
    'note': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'note',
      iterable: false,
      type: String,
    ),
    'dateIn': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'date_in',
      iterable: false,
      type: DateTime,
    ),
    'dueDate': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'due_date',
      iterable: false,
      type: DateTime,
    ),
    'createdAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'created_at',
      iterable: false,
      type: DateTime,
    ),
    'id': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'id',
      iterable: false,
      type: int,
    )
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
      DuePaymentModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `DuePaymentModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'DuePaymentModel';

  @override
  Future<DuePaymentModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$DuePaymentModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(DuePaymentModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$DuePaymentModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<DuePaymentModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$DuePaymentModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(DuePaymentModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$DuePaymentModelToSqlite(input,
          provider: provider, repository: repository);
}
