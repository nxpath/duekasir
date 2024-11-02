// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<UserModel> _$UserModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return UserModel(
      nama: data['nama'] as String,
      dob:
          data['dob'] == null ? null : DateTime.tryParse(data['dob'] as String),
      keterangan: data['keterangan'] as String?,
      status: data['status'] as bool,
      masuk: data['masuk'] == null
          ? null
          : DateTime.tryParse(data['masuk'] as String),
      user: data['user'] as String?,
      createdAt: DateTime.parse(data['createdAt'] as String),
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$UserModelToSupabase(UserModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'nama': instance.nama,
    'dob': instance.dob?.toIso8601String(),
    'keterangan': instance.keterangan,
    'status': instance.status,
    'masuk': instance.masuk?.toIso8601String(),
    'user': instance.user,
    'createdAt': instance.createdAt.toIso8601String(),
    'id': instance.id
  };
}

Future<UserModel> _$UserModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return UserModel(
      nama: data['nama'] as String,
      dob: data['dob'] == null
          ? null
          : data['dob'] == null
              ? null
              : DateTime.tryParse(data['dob'] as String),
      keterangan:
          data['keterangan'] == null ? null : data['keterangan'] as String?,
      status: data['status'] == 1,
      masuk: data['masuk'] == null
          ? null
          : data['masuk'] == null
              ? null
              : DateTime.tryParse(data['masuk'] as String),
      user: data['user'] == null ? null : data['user'] as String?,
      createdAt: DateTime.parse(data['created_at'] as String),
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$UserModelToSqlite(UserModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'nama': instance.nama,
    'dob': instance.dob?.toIso8601String(),
    'keterangan': instance.keterangan,
    'status': instance.status ? 1 : 0,
    'masuk': instance.masuk?.toIso8601String(),
    'user': instance.user,
    'created_at': instance.createdAt.toIso8601String(),
    'id': instance.id
  };
}

/// Construct a [UserModel]
class UserModelAdapter extends OfflineFirstWithSupabaseAdapter<UserModel> {
  UserModelAdapter();

  @override
  final supabaseTableName = 'users';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'nama': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'nama',
    ),
    'dob': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'dob',
    ),
    'keterangan': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'keterangan',
    ),
    'status': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'status',
    ),
    'masuk': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'masuk',
    ),
    'user': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'user',
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
    'nama': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'nama',
      iterable: false,
      type: String,
    ),
    'dob': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'dob',
      iterable: false,
      type: DateTime,
    ),
    'keterangan': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'keterangan',
      iterable: false,
      type: String,
    ),
    'status': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'status',
      iterable: false,
      type: bool,
    ),
    'masuk': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'masuk',
      iterable: false,
      type: DateTime,
    ),
    'user': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'user',
      iterable: false,
      type: String,
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
      UserModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `UserModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'UserModel';

  @override
  Future<UserModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$UserModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(UserModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$UserModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<UserModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$UserModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(UserModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$UserModelToSqlite(input,
          provider: provider, repository: repository);
}
