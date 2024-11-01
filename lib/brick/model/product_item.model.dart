import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(),
  sqliteConfig: SqliteSerializable(),
)
class ProductItemModel extends OfflineFirstWithSupabaseModel {
  @Sqlite(unique: true)
  int id;
  String? nama;
  String? code;
  String? deskripsi;
  @Supabase(name: 'jumlahBarang')
  int? jumlahBarang;
  int? quantity;
  String? ukuran;
  int? hargaDasar;
  @Supabase(name: 'hargaJual')
  int? hargaJual;
  @Supabase(name: 'hargaJualPersen')
  int? hargaJualPersen;
  @Supabase(name: 'diskonPersen')
  int? diskonPersen;
  @Supabase(name: 'isHargaJualPersen')
  bool? isHargaJualPersen;
  @Supabase(name: 'barangMasuk')
  DateTime? barangMasuk;
  @Supabase(name: 'barangKeluar')
  DateTime? barangKeluar;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;

  ProductItemModel({
    required this.id,
    this.nama,
    this.code,
    this.deskripsi,
    this.jumlahBarang,
    this.quantity,
    this.ukuran,
    this.hargaDasar,
    this.hargaJual,
    this.hargaJualPersen,
    this.diskonPersen,
    this.isHargaJualPersen,
    this.barangMasuk,
    this.barangKeluar,
    this.createdAt,
  });
}
