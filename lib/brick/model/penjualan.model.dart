import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:due_kasir/brick/model/product_item.model.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'report'),
)
class PenjualanModel extends OfflineFirstWithSupabaseModel {
  List<ProductItemModel> items = [];
  @Supabase(name: 'totalItem')
  late int totalItem;
  @Supabase(name: 'totalHarga')
  late double totalHarga;
  late double diskon;
  late int kasir;
  int? pembeli;
  String? keterangan;
  @Supabase(name: 'createdAt')
  DateTime createdAt;
  String? user;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  PenjualanModel({
    int? id,
    required this.items,
    required this.totalItem,
    required this.totalHarga,
    required this.diskon,
    required this.kasir,
    this.pembeli,
    this.keterangan,
    this.user,
    required this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
