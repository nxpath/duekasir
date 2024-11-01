import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'inventory'),
)
class ItemModel extends OfflineFirstWithSupabaseModel {
  String nama;
  String code;
  String? deskripsi;
  @Supabase(name: 'jumlahBarang')
  int jumlahBarang;
  int quantity;
  String ukuran;
  @Supabase(name: 'hargaDasar')
  int hargaDasar;
  @Supabase(name: 'hargaJual')
  int hargaJual;
  @Supabase(name: 'hargaJualPersen')
  int? hargaJualPersen;
  @Supabase(name: 'diskonPersen')
  int? diskonPersen;
  @Supabase(name: 'isHargaJualPersen')
  bool isHargaJualPersen;
  @Supabase(name: 'barangMasuk')
  DateTime? barangMasuk;
  @Supabase(name: 'barangKeluar')
  DateTime? barangKeluar;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  ItemModel({
    int? id,
    required this.nama,
    required this.code,
    this.deskripsi,
    required this.jumlahBarang,
    required this.quantity,
    required this.ukuran,
    required this.hargaDasar,
    required this.hargaJual,
    this.hargaJualPersen,
    this.diskonPersen,
    this.isHargaJualPersen = false,
    this.barangMasuk,
    this.barangKeluar,
    this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
