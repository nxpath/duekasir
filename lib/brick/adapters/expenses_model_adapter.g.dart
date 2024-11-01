// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<ExpensesModel> _$ExpensesModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return ExpensesModel(
      title: data['title'] as String,
      note: data['note'] as String?,
      amount: data['amount'] as int,
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.tryParse(data['createdAt'] as String),
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$ExpensesModelToSupabase(ExpensesModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'title': instance.title,
    'note': instance.note,
    'amount': instance.amount,
    'createdAt': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

Future<ExpensesModel> _$ExpensesModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return ExpensesModel(
      title: data['title'] as String,
      note: data['note'] == null ? null : data['note'] as String?,
      amount: data['amount'] as int,
      createdAt: data['created_at'] == null
          ? null
          : data['created_at'] == null
              ? null
              : DateTime.tryParse(data['created_at'] as String),
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$ExpensesModelToSqlite(ExpensesModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'title': instance.title,
    'note': instance.note,
    'amount': instance.amount,
    'created_at': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

/// Construct a [ExpensesModel]
class ExpensesModelAdapter
    extends OfflineFirstWithSupabaseAdapter<ExpensesModel> {
  ExpensesModelAdapter();

  @override
  final supabaseTableName = 'expenses';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'title': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'title',
    ),
    'note': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'note',
    ),
    'amount': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'amount',
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
    'title': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'title',
      iterable: false,
      type: String,
    ),
    'note': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'note',
      iterable: false,
      type: String,
    ),
    'amount': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'amount',
      iterable: false,
      type: int,
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
      ExpensesModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `ExpensesModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'ExpensesModel';

  @override
  Future<ExpensesModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ExpensesModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(ExpensesModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ExpensesModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<ExpensesModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ExpensesModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(ExpensesModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ExpensesModelToSqlite(input,
          provider: provider, repository: repository);
}
