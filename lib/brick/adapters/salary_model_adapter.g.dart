// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<SalaryModel> _$SalaryModelFromSupabase(Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return SalaryModel(
      userId: data['user_id'] as int,
      status: data['status'] as String,
      periode: data['periode'] as String,
      items: await Future.wait<ItemSalary>(data['items']
              ?.map((d) => ItemSalaryAdapter()
                  .fromSupabase(d, provider: provider, repository: repository))
              .toList()
              .cast<Future<ItemSalary>>() ??
          []),
      deductions: await Future.wait<ItemSalary>(data['deductions']
              ?.map((d) => ItemSalaryAdapter()
                  .fromSupabase(d, provider: provider, repository: repository))
              .toList()
              .cast<Future<ItemSalary>>() ??
          []),
      total: data['total'] as int?,
      note: data['note'] as String?,
      management: data['management'] as String?,
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.tryParse(data['createdAt'] as String),
      id: data['id'] as int?);
}

Future<Map<String, dynamic>> _$SalaryModelToSupabase(SalaryModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'user_id': instance.userId,
    'status': instance.status,
    'periode': instance.periode,
    'items': await Future.wait<Map<String, dynamic>>(instance.items
        .map((s) => ItemSalaryAdapter()
            .toSupabase(s, provider: provider, repository: repository))
        .toList()),
    'deductions': await Future.wait<Map<String, dynamic>>(instance.deductions
            ?.map((s) => ItemSalaryAdapter()
                .toSupabase(s, provider: provider, repository: repository))
            .toList() ??
        []),
    'total': instance.total,
    'note': instance.note,
    'management': instance.management,
    'createdAt': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

Future<SalaryModel> _$SalaryModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return SalaryModel(
      userId: data['user_id'] as int,
      status: data['status'] as String,
      periode: data['periode'] as String,
      items: (await provider.rawQuery(
              'SELECT DISTINCT `f_ItemSalary_brick_id` FROM `_brick_SalaryModel_items` WHERE l_SalaryModel_brick_id = ?',
              [
            data['_brick_id'] as int
          ]).then((results) {
        final ids = results.map((r) => r['f_ItemSalary_brick_id']);
        return Future.wait<ItemSalary>(ids.map((primaryKey) => repository!
            .getAssociation<ItemSalary>(
              Query.where('primaryKey', primaryKey, limit1: true),
            )
            .then((r) => r!.first)));
      }))
          .toList()
          .cast<ItemSalary>(),
      deductions: (await provider.rawQuery(
              'SELECT DISTINCT `f_ItemSalary_brick_id` FROM `_brick_SalaryModel_deductions` WHERE l_SalaryModel_brick_id = ?',
              [
            data['_brick_id'] as int
          ]).then((results) {
        final ids = results.map((r) => r['f_ItemSalary_brick_id']);
        return Future.wait<ItemSalary>(ids.map((primaryKey) => repository!
            .getAssociation<ItemSalary>(
              Query.where('primaryKey', primaryKey, limit1: true),
            )
            .then((r) => r!.first)));
      }))
          .toList()
          .cast<ItemSalary>(),
      total: data['total'] == null ? null : data['total'] as int?,
      note: data['note'] == null ? null : data['note'] as String?,
      management:
          data['management'] == null ? null : data['management'] as String?,
      createdAt: data['created_at'] == null
          ? null
          : data['created_at'] == null
              ? null
              : DateTime.tryParse(data['created_at'] as String),
      id: data['id'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$SalaryModelToSqlite(SalaryModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'user_id': instance.userId,
    'status': instance.status,
    'periode': instance.periode,
    'total': instance.total,
    'note': instance.note,
    'management': instance.management,
    'created_at': instance.createdAt?.toIso8601String(),
    'id': instance.id
  };
}

/// Construct a [SalaryModel]
class SalaryModelAdapter extends OfflineFirstWithSupabaseAdapter<SalaryModel> {
  SalaryModelAdapter();

  @override
  final supabaseTableName = 'salary';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'userId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'user_id',
    ),
    'status': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'status',
    ),
    'periode': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'periode',
    ),
    'items': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'items',
      associationType: ItemSalary,
      associationIsNullable: false,
    ),
    'deductions': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'deductions',
      associationType: ItemSalary,
      associationIsNullable: true,
    ),
    'total': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'total',
    ),
    'note': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'note',
    ),
    'management': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'management',
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
    'userId': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'user_id',
      iterable: false,
      type: int,
    ),
    'status': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'status',
      iterable: false,
      type: String,
    ),
    'periode': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'periode',
      iterable: false,
      type: String,
    ),
    'items': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'items',
      iterable: true,
      type: ItemSalary,
    ),
    'deductions': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'deductions',
      iterable: true,
      type: ItemSalary,
    ),
    'total': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'total',
      iterable: false,
      type: int,
    ),
    'note': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'note',
      iterable: false,
      type: String,
    ),
    'management': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'management',
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
      SalaryModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `SalaryModel` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'SalaryModel';
  @override
  Future<void> afterSave(instance, {required provider, repository}) async {
    if (instance.primaryKey != null) {
      final itemsOldColumns = await provider.rawQuery(
          'SELECT `f_ItemSalary_brick_id` FROM `_brick_SalaryModel_items` WHERE `l_SalaryModel_brick_id` = ?',
          [instance.primaryKey]);
      final itemsOldIds =
          itemsOldColumns.map((a) => a['f_ItemSalary_brick_id']);
      final itemsNewIds =
          instance.items.map((s) => s.primaryKey).whereType<int>();
      final itemsIdsToDelete =
          itemsOldIds.where((id) => !itemsNewIds.contains(id));

      await Future.wait<void>(itemsIdsToDelete.map((id) async {
        return await provider.rawExecute(
            'DELETE FROM `_brick_SalaryModel_items` WHERE `l_SalaryModel_brick_id` = ? AND `f_ItemSalary_brick_id` = ?',
            [instance.primaryKey, id]).catchError((e) => null);
      }));

      await Future.wait<int?>(instance.items.map((s) async {
        final id = s.primaryKey ??
            await provider.upsert<ItemSalary>(s, repository: repository);
        return await provider.rawInsert(
            'INSERT OR IGNORE INTO `_brick_SalaryModel_items` (`l_SalaryModel_brick_id`, `f_ItemSalary_brick_id`) VALUES (?, ?)',
            [instance.primaryKey, id]);
      }));
    }

    if (instance.primaryKey != null) {
      final deductionsOldColumns = await provider.rawQuery(
          'SELECT `f_ItemSalary_brick_id` FROM `_brick_SalaryModel_deductions` WHERE `l_SalaryModel_brick_id` = ?',
          [instance.primaryKey]);
      final deductionsOldIds =
          deductionsOldColumns.map((a) => a['f_ItemSalary_brick_id']);
      final deductionsNewIds =
          instance.deductions?.map((s) => s.primaryKey).whereType<int>() ?? [];
      final deductionsIdsToDelete =
          deductionsOldIds.where((id) => !deductionsNewIds.contains(id));

      await Future.wait<void>(deductionsIdsToDelete.map((id) async {
        return await provider.rawExecute(
            'DELETE FROM `_brick_SalaryModel_deductions` WHERE `l_SalaryModel_brick_id` = ? AND `f_ItemSalary_brick_id` = ?',
            [instance.primaryKey, id]).catchError((e) => null);
      }));

      await Future.wait<int?>(instance.deductions?.map((s) async {
            final id = s.primaryKey ??
                await provider.upsert<ItemSalary>(s, repository: repository);
            return await provider.rawInsert(
                'INSERT OR IGNORE INTO `_brick_SalaryModel_deductions` (`l_SalaryModel_brick_id`, `f_ItemSalary_brick_id`) VALUES (?, ?)',
                [instance.primaryKey, id]);
          }) ??
          []);
    }
  }

  @override
  Future<SalaryModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$SalaryModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(SalaryModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$SalaryModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<SalaryModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$SalaryModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(SalaryModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$SalaryModelToSqlite(input,
          provider: provider, repository: repository);
}
