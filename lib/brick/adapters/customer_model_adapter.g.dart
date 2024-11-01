// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<CustomerModel> _$CustomerModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return CustomerModel(
      nama: data['nama'] as String,
      phone: data['phone'] as String?,
      ktp: data['ktp'] as String?,
      dob:
          data['dob'] == null ? null : DateTime.tryParse(data['dob'] as String),
      keterangan: data['keterangan'] as String?,
      status: data['status'] as bool,
      masuk: data['masuk'] == null
          ? null
          : DateTime.tryParse(data['masuk'] as String),
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.tryParse(data['createdAt'] as String),
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$CustomerModelToSupabase(CustomerModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'nama': instance.nama,
    'phone': instance.phone,
    'ktp': instance.ktp,
    'dob': instance.dob?.toIso8601String(),
    'keterangan': instance.keterangan,
    'status': instance.status,
    'masuk': instance.masuk?.toIso8601String(),
    'createdAt': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

Future<CustomerModel> _$CustomerModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return CustomerModel(
      nama: data['nama'] as String,
      phone: data['phone'] == null ? null : data['phone'] as String?,
      ktp: data['ktp'] == null ? null : data['ktp'] as String?,
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
      createdAt: data['created_at'] == null
          ? null
          : data['created_at'] == null
              ? null
              : DateTime.tryParse(data['created_at'] as String),
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$CustomerModelToSqlite(CustomerModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'nama': instance.nama,
    'phone': instance.phone,
    'ktp': instance.ktp,
    'dob': instance.dob?.toIso8601String(),
    'keterangan': instance.keterangan,
    'status': instance.status ? 1 : 0,
    'masuk': instance.masuk?.toIso8601String(),
    'created_at': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

/// Construct a [CustomerModel]
class CustomerModelAdapter
    extends OfflineFirstWithSupabaseAdapter<CustomerModel> {
  CustomerModelAdapter();

  @override
  final supabaseTableName = 'customer';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'nama': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'nama',
    ),
    'phone': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'phone',
    ),
    'ktp': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'ktp',
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
    'phone': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'phone',
      iterable: false,
      type: String,
    ),
    'ktp': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'ktp',
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
      CustomerModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `CustomerModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'CustomerModel';

  @override
  Future<CustomerModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$CustomerModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(CustomerModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$CustomerModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<CustomerModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$CustomerModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(CustomerModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$CustomerModelToSqlite(input,
          provider: provider, repository: repository);
}
