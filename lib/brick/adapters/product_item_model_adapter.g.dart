// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<ProductItemModel> _$ProductItemModelFromSupabase(
    Map<String, dynamic> data,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return ProductItemModel(
      id: data['id'] as int,
      nama: data['nama'] as String?,
      code: data['code'] as String?,
      deskripsi: data['deskripsi'] as String?,
      jumlahBarang: data['jumlahBarang'] as int?,
      quantity: data['quantity'] as int?,
      ukuran: data['ukuran'] as String?,
      hargaDasar: data['harga_dasar'] as int?,
      hargaJual: data['hargaJual'] as int?,
      hargaJualPersen: data['hargaJualPersen'] as int?,
      diskonPersen: data['diskonPersen'] as int?,
      isHargaJualPersen: data['isHargaJualPersen'] as bool?,
      barangMasuk: data['barangMasuk'] == null
          ? null
          : DateTime.tryParse(data['barangMasuk'] as String),
      barangKeluar: data['barangKeluar'] == null
          ? null
          : DateTime.tryParse(data['barangKeluar'] as String),
      createdAt: data['createdAt'] == null
          ? null
          : DateTime.tryParse(data['createdAt'] as String));
}

Future<Map<String, dynamic>> _$ProductItemModelToSupabase(
    ProductItemModel instance,
    {required SupabaseProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'id': instance.id,
    'nama': instance.nama,
    'code': instance.code,
    'deskripsi': instance.deskripsi,
    'jumlahBarang': instance.jumlahBarang,
    'quantity': instance.quantity,
    'ukuran': instance.ukuran,
    'harga_dasar': instance.hargaDasar,
    'hargaJual': instance.hargaJual,
    'hargaJualPersen': instance.hargaJualPersen,
    'diskonPersen': instance.diskonPersen,
    'isHargaJualPersen': instance.isHargaJualPersen,
    'barangMasuk': instance.barangMasuk?.toIso8601String(),
    'barangKeluar': instance.barangKeluar?.toIso8601String(),
    'createdAt': instance.createdAt?.toIso8601String()
  };
}

Future<ProductItemModel> _$ProductItemModelFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return ProductItemModel(
      id: data['id'] as int,
      nama: data['nama'] == null ? null : data['nama'] as String?,
      code: data['code'] == null ? null : data['code'] as String?,
      deskripsi:
          data['deskripsi'] == null ? null : data['deskripsi'] as String?,
      jumlahBarang:
          data['jumlah_barang'] == null ? null : data['jumlah_barang'] as int?,
      quantity: data['quantity'] == null ? null : data['quantity'] as int?,
      ukuran: data['ukuran'] == null ? null : data['ukuran'] as String?,
      hargaDasar:
          data['harga_dasar'] == null ? null : data['harga_dasar'] as int?,
      hargaJual: data['harga_jual'] == null ? null : data['harga_jual'] as int?,
      hargaJualPersen: data['harga_jual_persen'] == null
          ? null
          : data['harga_jual_persen'] as int?,
      diskonPersen:
          data['diskon_persen'] == null ? null : data['diskon_persen'] as int?,
      isHargaJualPersen: data['is_harga_jual_persen'] == null
          ? null
          : data['is_harga_jual_persen'] == 1,
      barangMasuk: data['barang_masuk'] == null
          ? null
          : data['barang_masuk'] == null
              ? null
              : DateTime.tryParse(data['barang_masuk'] as String),
      barangKeluar: data['barang_keluar'] == null
          ? null
          : data['barang_keluar'] == null
              ? null
              : DateTime.tryParse(data['barang_keluar'] as String),
      createdAt: data['created_at'] == null
          ? null
          : data['created_at'] == null
              ? null
              : DateTime.tryParse(data['created_at'] as String))
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$ProductItemModelToSqlite(
    ProductItemModel instance,
    {required SqliteProvider provider,
    OfflineFirstWithSupabaseRepository? repository}) async {
  return {
    'id': instance.id,
    'nama': instance.nama,
    'code': instance.code,
    'deskripsi': instance.deskripsi,
    'jumlah_barang': instance.jumlahBarang,
    'quantity': instance.quantity,
    'ukuran': instance.ukuran,
    'harga_dasar': instance.hargaDasar,
    'harga_jual': instance.hargaJual,
    'harga_jual_persen': instance.hargaJualPersen,
    'diskon_persen': instance.diskonPersen,
    'is_harga_jual_persen': instance.isHargaJualPersen == null
        ? null
        : (instance.isHargaJualPersen! ? 1 : 0),
    'barang_masuk': instance.barangMasuk?.toIso8601String(),
    'barang_keluar': instance.barangKeluar?.toIso8601String(),
    'created_at': instance.createdAt?.toIso8601String()
  };
}

/// Construct a [ProductItemModel]
class ProductItemModelAdapter
    extends OfflineFirstWithSupabaseAdapter<ProductItemModel> {
  ProductItemModelAdapter();

  @override
  final supabaseTableName = 'product_item_models';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    ),
    'nama': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'nama',
    ),
    'code': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'code',
    ),
    'deskripsi': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'deskripsi',
    ),
    'jumlahBarang': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'jumlahBarang',
    ),
    'quantity': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'quantity',
    ),
    'ukuran': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'ukuran',
    ),
    'hargaDasar': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'harga_dasar',
    ),
    'hargaJual': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'hargaJual',
    ),
    'hargaJualPersen': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'hargaJualPersen',
    ),
    'diskonPersen': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'diskonPersen',
    ),
    'isHargaJualPersen': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'isHargaJualPersen',
    ),
    'barangMasuk': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'barangMasuk',
    ),
    'barangKeluar': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'barangKeluar',
    ),
    'createdAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'createdAt',
    )
  };
  @override
  final ignoreDuplicates = false;
  @override
  final uniqueFields = {};
  @override
  final Map<String, RuntimeSqliteColumnDefinition> fieldsToSqliteColumns = {
    'primaryKey': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: '_brick_id',
      iterable: false,
      type: int,
    ),
    'id': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'id',
      iterable: false,
      type: int,
    ),
    'nama': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'nama',
      iterable: false,
      type: String,
    ),
    'code': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'code',
      iterable: false,
      type: String,
    ),
    'deskripsi': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'deskripsi',
      iterable: false,
      type: String,
    ),
    'jumlahBarang': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'jumlah_barang',
      iterable: false,
      type: int,
    ),
    'quantity': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'quantity',
      iterable: false,
      type: int,
    ),
    'ukuran': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'ukuran',
      iterable: false,
      type: String,
    ),
    'hargaDasar': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'harga_dasar',
      iterable: false,
      type: int,
    ),
    'hargaJual': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'harga_jual',
      iterable: false,
      type: int,
    ),
    'hargaJualPersen': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'harga_jual_persen',
      iterable: false,
      type: int,
    ),
    'diskonPersen': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'diskon_persen',
      iterable: false,
      type: int,
    ),
    'isHargaJualPersen': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'is_harga_jual_persen',
      iterable: false,
      type: bool,
    ),
    'barangMasuk': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'barang_masuk',
      iterable: false,
      type: DateTime,
    ),
    'barangKeluar': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'barang_keluar',
      iterable: false,
      type: DateTime,
    ),
    'createdAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'created_at',
      iterable: false,
      type: DateTime,
    )
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
      ProductItemModel instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `ProductItemModel` WHERE id = ? LIMIT 1''',
        [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'ProductItemModel';

  @override
  Future<ProductItemModel> fromSupabase(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ProductItemModelFromSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSupabase(ProductItemModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ProductItemModelToSupabase(input,
          provider: provider, repository: repository);
  @override
  Future<ProductItemModel> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ProductItemModelFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(ProductItemModel input,
          {required provider,
          covariant OfflineFirstWithSupabaseRepository? repository}) async =>
      await _$ProductItemModelToSqlite(input,
          provider: provider, repository: repository);
}
