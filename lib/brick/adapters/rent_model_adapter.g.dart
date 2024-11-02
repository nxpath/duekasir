// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<RentModel> _$RentModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return RentModel(
      name: data['name'] as String,
      item: data['item'] as int,
      note: data['note'] as String?,
      amount: data['amount'] as int,
      pinalty: data['pinalty'] as int?,
      identity: data['identity'] as bool,
      picture: data['picture'] as bool,
      paid: data['paid'] as bool,
      howManyDay: data['howManyDay'] as int,
      rentDate: DateTime.parse(data['rentDate'] as String),
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.tryParse(data['updatedAt'] as String),
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.tryParse(data['createdAt'] as String),
      user: data['user'] as String?,
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$RentModelToSupabase(RentModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'name': instance.name,
    'item': instance.item,
    'note': instance.note,
    'amount': instance.amount,
    'pinalty': instance.pinalty,
    'identity': instance.identity,
    'picture': instance.picture,
    'paid': instance.paid,
    'howManyDay': instance.howManyDay,
    'rentDate': instance.rentDate.toIso8601String(),
    'updatedAt': instance.updatedAt?.toIso8601String(),
    'createdAt': instance.createdAt?.toIso8601String(),
    'user': instance.user,
    'id': instance.id
  };
}

Future<RentModel> _$RentModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return RentModel(
      name: data['name'] as String,
      item: data['item'] as int,
      note: data['note'] == null ? null : data['note'] as String?,
      amount: data['amount'] as int,
      pinalty: data['pinalty'] == null ? null : data['pinalty'] as int?,
      identity: data['identity'] == 1,
      picture: data['picture'] == 1,
      paid: data['paid'] == 1,
      howManyDay: data['how_many_day'] as int,
      rentDate: DateTime.parse(data['rent_date'] as String),
      updatedAt: data['updated_at'] == null
          ? null
          : data['updated_at'] == null
              ? null
              : DateTime.tryParse(data['updated_at'] as String),
      createdAt: data['created_at'] == null
          ? null
          : data['created_at'] == null
              ? null
              : DateTime.tryParse(data['created_at'] as String),
      user: data['user'] == null ? null : data['user'] as String?,
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$RentModelToSqlite(RentModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'name': instance.name,
    'item': instance.item,
    'note': instance.note,
    'amount': instance.amount,
    'pinalty': instance.pinalty,
    'identity': instance.identity ? 1 : 0,
    'picture': instance.picture ? 1 : 0,
    'paid': instance.paid ? 1 : 0,
    'how_many_day': instance.howManyDay,
    'rent_date': instance.rentDate.toIso8601String(),
    'updated_at': instance.updatedAt?.toIso8601String(),
    'created_at': instance.createdAt?.toIso8601String(),
    'user': instance.user,
    'id': instance.id
  };
}

/// Construct a [RentModel]
class RentModelAdapter extends OfflineFirstWithSupabaseAdapter<RentModel> {
  RentModelAdapter();

  @override
  final supabaseTableName = 'rent';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'name': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'name',
    ),
    'item': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'item',
    ),
    'note': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'note',
    ),
    'amount': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'amount',
    ),
    'pinalty': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'pinalty',
    ),
    'identity': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'identity',
    ),
    'picture': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'picture',
    ),
    'paid': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'paid',
    ),
    'howManyDay': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'howManyDay',
    ),
    'rentDate': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'rentDate',
    ),
    'updatedAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'updatedAt',
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
    'item': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'item',
      iterable: false,
      type: int,
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
    'pinalty': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'pinalty',
      iterable: false,
      type: int,
    ),
    'identity': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'identity',
      iterable: false,
      type: bool,
    ),
    'picture': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'picture',
      iterable: false,
      type: bool,
    ),
    'paid': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'paid',
      iterable: false,
      type: bool,
    ),
    'howManyDay': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'how_many_day',
      iterable: false,
      type: int,
    ),
    'rentDate': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'rent_date',
      iterable: false,
      type: DateTime,
    ),
    'updatedAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'updated_at',
      iterable: false,
      type: DateTime,
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
      RentModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `RentModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'RentModel';

  @override
  Future<RentModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(RentModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<RentModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(RentModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$RentModelToSqlite(input,
          provider: provider, repository: repository);
}
