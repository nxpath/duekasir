// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<RentItemModel> _$RentItemModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return RentItemModel(
      name: data['name'] as String,
      code: data['code'] as String,
      note: data['note'] as String?,
      jumlahBarang: data['jumlahBarang'] as int,
      rentThreeDay: data['rentThreeDay'] as int,
      rentOneWeek: data['rentOneWeek'] as int,
      rentOneMonth: data['rentOneMonth'] as int,
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.tryParse(data['createdAt'] as String),
      user: data['user'] as String?,
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$RentItemModelToSupabase(RentItemModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'name': instance.name,
    'code': instance.code,
    'note': instance.note,
    'jumlahBarang': instance.jumlahBarang,
    'rentThreeDay': instance.rentThreeDay,
    'rentOneWeek': instance.rentOneWeek,
    'rentOneMonth': instance.rentOneMonth,
    'createdAt': instance.createdAt?.toIso8601String(),
    'user': instance.user,
    'id': instance.id
  };
}

Future<RentItemModel> _$RentItemModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return RentItemModel(
      name: data['name'] as String,
      code: data['code'] as String,
      note: data['note'] == null ? null : data['note'] as String?,
      jumlahBarang: data['jumlah_barang'] as int,
      rentThreeDay: data['rent_three_day'] as int,
      rentOneWeek: data['rent_one_week'] as int,
      rentOneMonth: data['rent_one_month'] as int,
      createdAt: data['created_at'] == null
          ? null
          : data['created_at'] == null
              ? null
              : DateTime.tryParse(data['created_at'] as String),
      user: data['user'] == null ? null : data['user'] as String?,
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$RentItemModelToSqlite(RentItemModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'name': instance.name,
    'code': instance.code,
    'note': instance.note,
    'jumlah_barang': instance.jumlahBarang,
    'rent_three_day': instance.rentThreeDay,
    'rent_one_week': instance.rentOneWeek,
    'rent_one_month': instance.rentOneMonth,
    'created_at': instance.createdAt?.toIso8601String(),
    'user': instance.user,
    'id': instance.id
  };
}

/// Construct a [RentItemModel]
class RentItemModelAdapter
    extends OfflineFirstWithSupabaseAdapter<RentItemModel> {
  RentItemModelAdapter();

  @override
  final supabaseTableName = 'rent_items';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'name': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'name',
    ),
    'code': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'code',
    ),
    'note': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'note',
    ),
    'jumlahBarang': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'jumlahBarang',
    ),
    'rentThreeDay': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'rentThreeDay',
    ),
    'rentOneWeek': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'rentOneWeek',
    ),
    'rentOneMonth': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'rentOneMonth',
    ),
    'createdAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'createdAt',
    ),
    'user': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'user',
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
    'code': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'code',
      iterable: false,
      type: String,
    ),
    'note': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'note',
      iterable: false,
      type: String,
    ),
    'jumlahBarang': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'jumlah_barang',
      iterable: false,
      type: int,
    ),
    'rentThreeDay': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'rent_three_day',
      iterable: false,
      type: int,
    ),
    'rentOneWeek': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'rent_one_week',
      iterable: false,
      type: int,
    ),
    'rentOneMonth': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'rent_one_month',
      iterable: false,
      type: int,
    ),
    'createdAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'created_at',
      iterable: false,
      type: DateTime,
    ),
    'user': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'user',
      iterable: false,
      type: String,
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
      RentItemModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `RentItemModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'RentItemModel';

  @override
  Future<RentItemModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentItemModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(RentItemModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentItemModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<RentItemModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentItemModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(RentItemModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentItemModelToSqlite(input,
          provider: provider, repository: repository);
}
