// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<PresenceModel> _$PresenceModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return PresenceModel(
      user: data['user'] as int,
      status: data['status'] as String,
      note: data['note'] as String?,
      createdAt: DateTime.parse(data['createdAt'] as String),
      path: data['path'] as String?,
      long: data['long'] as double?,
      lat: data['lat'] as double?,
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$PresenceModelToSupabase(PresenceModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'user': instance.user,
    'status': instance.status,
    'note': instance.note,
    'createdAt': instance.createdAt.toIso8601String(),
    'path': instance.path,
    'long': instance.long,
    'lat': instance.lat,
    'id': instance.id
  };
}

Future<PresenceModel> _$PresenceModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return PresenceModel(
      user: data['user'] as int,
      status: data['status'] as String,
      note: data['note'] == null ? null : data['note'] as String?,
      createdAt: DateTime.parse(data['created_at'] as String),
      path: data['path'] == null ? null : data['path'] as String?,
      long: data['long'] == null ? null : data['long'] as double?,
      lat: data['lat'] == null ? null : data['lat'] as double?,
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$PresenceModelToSqlite(PresenceModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'user': instance.user,
    'status': instance.status,
    'note': instance.note,
    'created_at': instance.createdAt.toIso8601String(),
    'path': instance.path,
    'long': instance.long,
    'lat': instance.lat,
    'id': instance.id
  };
}

/// Construct a [PresenceModel]
class PresenceModelAdapter
    extends OfflineFirstWithSupabaseAdapter<PresenceModel> {
  PresenceModelAdapter();

  @override
  final supabaseTableName = 'presense';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'user': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'user',
    ),
    'status': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'status',
    ),
    'note': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'note',
    ),
    'createdAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'createdAt',
    ),
    'path': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'path',
    ),
    'long': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'long',
    ),
    'lat': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'lat',
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
    'user': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'user',
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
    'createdAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'created_at',
      iterable: false,
      type: DateTime,
    ),
    'path': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'path',
      iterable: false,
      type: String,
    ),
    'long': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'long',
      iterable: false,
      type: double,
    ),
    'lat': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'lat',
      iterable: false,
      type: double,
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
      PresenceModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `PresenceModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'PresenceModel';

  @override
  Future<PresenceModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PresenceModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(PresenceModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PresenceModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<PresenceModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PresenceModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(PresenceModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PresenceModelToSqlite(input,
          provider: provider, repository: repository);
}
