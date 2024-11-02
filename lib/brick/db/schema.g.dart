// GENERATED CODE DO NOT EDIT
// This file should be version controlled
import 'package:brick_sqlite/db.dart';
part '20241031104508.migration.dart';
part '20241101231919.migration.dart';
part '20241101232132.migration.dart';
part '20241101232317.migration.dart';
part '20241102001942.migration.dart';
part '20241102002642.migration.dart';

/// All intelligently-generated migrations from all `@Migratable` classes on disk
final migrations = <Migration>{
  const Migration20241031104508(),
  const Migration20241101231919(),
  const Migration20241101232132(),
  const Migration20241101232317(),
  const Migration20241102001942(),
  const Migration20241102002642()
};

/// A consumable database structure including the latest generated migration.
final schema =
    Schema(20241102002642, generatorVersion: 1, tables: <SchemaTable>{
  SchemaTable('StoreModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('title', Column.varchar),
    SchemaColumn('description', Column.varchar),
    SchemaColumn('phone', Column.varchar),
    SchemaColumn('footer', Column.varchar),
    SchemaColumn('sub_footer', Column.varchar),
    SchemaColumn('user', Column.varchar),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('ExpensesModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('title', Column.varchar),
    SchemaColumn('note', Column.varchar),
    SchemaColumn('amount', Column.integer),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('RentModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('name', Column.varchar),
    SchemaColumn('item', Column.integer),
    SchemaColumn('note', Column.varchar),
    SchemaColumn('amount', Column.integer),
    SchemaColumn('pinalty', Column.integer),
    SchemaColumn('identity', Column.boolean),
    SchemaColumn('picture', Column.boolean),
    SchemaColumn('paid', Column.boolean),
    SchemaColumn('how_many_day', Column.integer),
    SchemaColumn('rent_date', Column.datetime),
    SchemaColumn('updated_at', Column.datetime),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('user', Column.varchar),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('ItemModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('nama', Column.varchar),
    SchemaColumn('code', Column.varchar),
    SchemaColumn('deskripsi', Column.varchar),
    SchemaColumn('jumlah_barang', Column.integer),
    SchemaColumn('quantity', Column.integer),
    SchemaColumn('ukuran', Column.varchar),
    SchemaColumn('harga_dasar', Column.integer),
    SchemaColumn('harga_jual', Column.integer),
    SchemaColumn('harga_jual_persen', Column.integer),
    SchemaColumn('diskon_persen', Column.integer),
    SchemaColumn('is_harga_jual_persen', Column.boolean),
    SchemaColumn('barang_masuk', Column.datetime),
    SchemaColumn('barang_keluar', Column.datetime),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('user', Column.varchar),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('_brick_SalaryModel_items', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('l_SalaryModel_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'SalaryModel',
        onDeleteCascade: true,
        onDeleteSetDefault: false),
    SchemaColumn('f_ItemSalary_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'ItemSalary',
        onDeleteCascade: true,
        onDeleteSetDefault: false)
  }, indices: <SchemaIndex>{
    SchemaIndex(
        columns: ['l_SalaryModel_brick_id', 'f_ItemSalary_brick_id'],
        unique: true)
  }),
  SchemaTable('_brick_SalaryModel_deductions', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('l_SalaryModel_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'SalaryModel',
        onDeleteCascade: true,
        onDeleteSetDefault: false),
    SchemaColumn('f_ItemSalary_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'ItemSalary',
        onDeleteCascade: true,
        onDeleteSetDefault: false)
  }, indices: <SchemaIndex>{
    SchemaIndex(
        columns: ['l_SalaryModel_brick_id', 'f_ItemSalary_brick_id'],
        unique: true)
  }),
  SchemaTable('SalaryModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('user_id', Column.integer),
    SchemaColumn('status', Column.varchar),
    SchemaColumn('periode', Column.varchar),
    SchemaColumn('total', Column.integer),
    SchemaColumn('note', Column.varchar),
    SchemaColumn('management', Column.varchar),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('user', Column.varchar),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('RentItemModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('name', Column.varchar),
    SchemaColumn('code', Column.varchar),
    SchemaColumn('note', Column.varchar),
    SchemaColumn('jumlah_barang', Column.integer),
    SchemaColumn('rent_three_day', Column.integer),
    SchemaColumn('rent_one_week', Column.integer),
    SchemaColumn('rent_one_month', Column.integer),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('user', Column.varchar),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('PresenceModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('user', Column.integer),
    SchemaColumn('status', Column.varchar),
    SchemaColumn('note', Column.varchar),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('path', Column.varchar),
    SchemaColumn('long', Column.Double),
    SchemaColumn('lat', Column.Double),
    SchemaColumn('belong', Column.varchar),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('DuePaymentModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('name', Column.varchar),
    SchemaColumn('invoice', Column.varchar),
    SchemaColumn('item_name', Column.varchar),
    SchemaColumn('item_amount', Column.integer),
    SchemaColumn('amount', Column.integer),
    SchemaColumn('status', Column.varchar),
    SchemaColumn('note', Column.varchar),
    SchemaColumn('date_in', Column.datetime),
    SchemaColumn('due_date', Column.datetime),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('CustomerModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('nama', Column.varchar),
    SchemaColumn('phone', Column.varchar),
    SchemaColumn('ktp', Column.varchar),
    SchemaColumn('dob', Column.datetime),
    SchemaColumn('keterangan', Column.varchar),
    SchemaColumn('status', Column.boolean),
    SchemaColumn('masuk', Column.datetime),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('UserModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('nama', Column.varchar),
    SchemaColumn('dob', Column.datetime),
    SchemaColumn('keterangan', Column.varchar),
    SchemaColumn('status', Column.boolean),
    SchemaColumn('masuk', Column.datetime),
    SchemaColumn('user', Column.varchar),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('RequestModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('title', Column.varchar),
    SchemaColumn('note', Column.varchar),
    SchemaColumn('status', Column.varchar),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('_brick_PenjualanModel_items', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('l_PenjualanModel_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'PenjualanModel',
        onDeleteCascade: true,
        onDeleteSetDefault: false),
    SchemaColumn('f_ProductItemModel_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'ProductItemModel',
        onDeleteCascade: true,
        onDeleteSetDefault: false)
  }, indices: <SchemaIndex>{
    SchemaIndex(
        columns: ['l_PenjualanModel_brick_id', 'f_ProductItemModel_brick_id'],
        unique: true)
  }),
  SchemaTable('PenjualanModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('total_item', Column.integer),
    SchemaColumn('total_harga', Column.Double),
    SchemaColumn('diskon', Column.Double),
    SchemaColumn('kasir', Column.integer),
    SchemaColumn('pembeli', Column.integer),
    SchemaColumn('keterangan', Column.varchar),
    SchemaColumn('created_at', Column.datetime),
    SchemaColumn('user', Column.varchar),
    SchemaColumn('id', Column.integer, unique: true)
  }, indices: <SchemaIndex>{
    SchemaIndex(columns: ['id'], unique: true)
  }),
  SchemaTable('ProductItemModel', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('id', Column.integer, unique: true),
    SchemaColumn('nama', Column.varchar),
    SchemaColumn('code', Column.varchar),
    SchemaColumn('deskripsi', Column.varchar),
    SchemaColumn('jumlah_barang', Column.integer),
    SchemaColumn('quantity', Column.integer),
    SchemaColumn('ukuran', Column.varchar),
    SchemaColumn('harga_dasar', Column.integer),
    SchemaColumn('harga_jual', Column.integer),
    SchemaColumn('harga_jual_persen', Column.integer),
    SchemaColumn('diskon_persen', Column.integer),
    SchemaColumn('is_harga_jual_persen', Column.boolean),
    SchemaColumn('barang_masuk', Column.datetime),
    SchemaColumn('barang_keluar', Column.datetime),
    SchemaColumn('created_at', Column.datetime)
  }, indices: <SchemaIndex>{}),
  SchemaTable('ItemSalary', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('id', Column.integer, unique: true),
    SchemaColumn('description', Column.varchar),
    SchemaColumn('amount', Column.varchar)
  }, indices: <SchemaIndex>{})
});
