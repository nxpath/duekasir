// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<PenjualanModel> _$PenjualanModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return PenjualanModel(
      items: await Future.wait<ProductItemModel>(data['items']
              ?.map((d) => ProductItemModelAdapter()
                  .fromSupabase(d, provider: provider, repository: repository))
              .toList()
              .cast<Future<ProductItemModel>>() ??
          []),
      totalItem: data['totalItem'] as int,
      totalHarga: data['totalHarga'] as double,
      diskon: data['diskon'] as double,
      kasir: data['kasir'] as int,
      pembeli: data['pembeli'] as int?,
      keterangan: data['keterangan'] as String?,
      createdAt: DateTime.parse(data['createdAt'] as String),
      user: data['user'] as String?,
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$PenjualanModelToSupabase(PenjualanModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'items': await Future.wait<Map<String, dynamic>>(instance.items
        .map((s) => ProductItemModelAdapter()
            .toSupabase(s, provider: provider, repository: repository))
        .toList()),
    'totalItem': instance.totalItem,
    'totalHarga': instance.totalHarga,
    'diskon': instance.diskon,
    'kasir': instance.kasir,
    'pembeli': instance.pembeli,
    'keterangan': instance.keterangan,
    'createdAt': instance.createdAt.toIso8601String(),
    'user': instance.user,
    'id': instance.id
  };
}

Future<PenjualanModel> _$PenjualanModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return PenjualanModel(
      items: (await provider.rawQuery(
              'SELECT DISTINCT `f_ProductItemModel_brick_id` FROM `_brick_PenjualanModel_items` WHERE l_PenjualanModel_brick_id = ?',
              [
            data['_brick_id'] as int
          ]).then((results) {
        final ids = results.map((r) => r['f_ProductItemModel_brick_id']);
        return Future.wait<ProductItemModel>(ids.map((primaryKey) => repository!
            .getAssociation<ProductItemModel>(
              Query.where('primaryKey', primaryKey, limit1: true),
            )
            .then((r) => r!.first)));
      }))
          .toList()
          .cast<ProductItemModel>(),
      totalItem: data['total_item'] as int,
      totalHarga: data['total_harga'] as double,
      diskon: data['diskon'] as double,
      kasir: data['kasir'] as int,
      pembeli: data['pembeli'] == null ? null : data['pembeli'] as int?,
      keterangan:
          data['keterangan'] == null ? null : data['keterangan'] as String?,
      createdAt: DateTime.parse(data['created_at'] as String),
      user: data['user'] == null ? null : data['user'] as String?,
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$PenjualanModelToSqlite(PenjualanModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'total_item': instance.totalItem,
    'total_harga': instance.totalHarga,
    'diskon': instance.diskon,
    'kasir': instance.kasir,
    'pembeli': instance.pembeli,
    'keterangan': instance.keterangan,
    'created_at': instance.createdAt.toIso8601String(),
    'user': instance.user,
    'id': instance.id
  };
}

/// Construct a [PenjualanModel]
class PenjualanModelAdapter
    extends OfflineFirstWithSupabaseAdapter<PenjualanModel> {
  PenjualanModelAdapter();

  @override
  final supabaseTableName = 'report';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'items': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'items',
      associationType: ProductItemModel,
      associationIsNullable: false,
    ),
    'totalItem': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'totalItem',
    ),
    'totalHarga': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'totalHarga',
    ),
    'diskon': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'diskon',
    ),
    'kasir': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'kasir',
    ),
    'pembeli': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'pembeli',
    ),
    'keterangan': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'keterangan',
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
    'items': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'items',
      iterable: true,
      type: ProductItemModel,
    ),
    'totalItem': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'total_item',
      iterable: false,
      type: int,
    ),
    'totalHarga': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'total_harga',
      iterable: false,
      type: double,
    ),
    'diskon': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'diskon',
      iterable: false,
      type: double,
    ),
    'kasir': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'kasir',
      iterable: false,
      type: int,
    ),
    'pembeli': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'pembeli',
      iterable: false,
      type: int,
    ),
    'keterangan': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'keterangan',
      iterable: false,
      type: String,
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
      PenjualanModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `PenjualanModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'PenjualanModel';
  @override
  Future<void> afterSave(instance, {required provider, repository}) async {
    if (instance.primaryKey != null) {
      final itemsOldColumns = await provider.rawQuery(
          'SELECT `f_ProductItemModel_brick_id` FROM `_brick_PenjualanModel_items` WHERE `l_PenjualanModel_brick_id` = ?',
          [instance.primaryKey]);
      final itemsOldIds =
          itemsOldColumns.map((a) => a['f_ProductItemModel_brick_id']);
      final itemsNewIds =
          instance.items.map((s) => s.primaryKey).whereType<int>();
      final itemsIdsToDelete =
          itemsOldIds.where((id) => !itemsNewIds.contains(id));

      await Future.wait<void>(itemsIdsToDelete.map((id) async {
        return await provider.rawExecute(
            'DELETE FROM `_brick_PenjualanModel_items` WHERE `l_PenjualanModel_brick_id` = ? AND `f_ProductItemModel_brick_id` = ?',
            [instance.primaryKey, id]).catchError((e) => null);
      }));

      await Future.wait<int?>(instance.items.map((s) async {
        final id = s.primaryKey ??
            await provider.upsert<ProductItemModel>(s, repository: repository);
        return await provider.rawInsert(
            'INSERT OR IGNORE INTO `_brick_PenjualanModel_items` (`l_PenjualanModel_brick_id`, `f_ProductItemModel_brick_id`) VALUES (?, ?)',
            [instance.primaryKey, id]);
      }));
    }
  }

  @override
  Future<PenjualanModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PenjualanModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(PenjualanModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PenjualanModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<PenjualanModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PenjualanModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(PenjualanModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$PenjualanModelToSqlite(input,
          provider: provider, repository: repository);
}
