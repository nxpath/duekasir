// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<StoreModel> _$StoreModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return StoreModel(
      title: data['title'] as String,
      description: data['description'] as String,
      phone: data['phone'] as String,
      footer: data['footer'] as String?,
      subFooter: data['subFooter'] as String?,
      user: data['user'] as String?,
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$StoreModelToSupabase(StoreModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'title': instance.title,
    'description': instance.description,
    'phone': instance.phone,
    'footer': instance.footer,
    'subFooter': instance.subFooter,
    'user': instance.user,
    'id': instance.id
  };
}

Future<StoreModel> _$StoreModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return StoreModel(
      title: data['title'] as String,
      description: data['description'] as String,
      phone: data['phone'] as String,
      footer: data['footer'] == null ? null : data['footer'] as String?,
      subFooter:
          data['sub_footer'] == null ? null : data['sub_footer'] as String?,
      user: data['user'] == null ? null : data['user'] as String?,
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$StoreModelToSqlite(StoreModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'title': instance.title,
    'description': instance.description,
    'phone': instance.phone,
    'footer': instance.footer,
    'sub_footer': instance.subFooter,
    'user': instance.user,
    'id': instance.id
  };
}

/// Construct a [StoreModel]
class StoreModelAdapter extends OfflineFirstWithSupabaseAdapter<StoreModel> {
  StoreModelAdapter();

  @override
  final supabaseTableName = 'store';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'title': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'title',
    ),
    'description': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'description',
    ),
    'phone': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'phone',
    ),
    'footer': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'footer',
    ),
    'subFooter': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'subFooter',
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
    'title': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'title',
      iterable: false,
      type: String,
    ),
    'description': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'description',
      iterable: false,
      type: String,
    ),
    'phone': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'phone',
      iterable: false,
      type: String,
    ),
    'footer': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'footer',
      iterable: false,
      type: String,
    ),
    'subFooter': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'sub_footer',
      iterable: false,
      type: String,
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
      StoreModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `StoreModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'StoreModel';

  @override
  Future<StoreModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$StoreModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(StoreModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$StoreModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<StoreModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$StoreModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(StoreModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$StoreModelToSqlite(input,
          provider: provider, repository: repository);
}
