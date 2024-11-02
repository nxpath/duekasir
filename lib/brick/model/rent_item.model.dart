import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'rent_items'),
)
class RentItemModel extends OfflineFirstWithSupabaseModel {
  String name;
  String code;
  String? note;
  @Supabase(name: 'jumlahBarang')
  int jumlahBarang;
  @Supabase(name: 'rentThreeDay')
  int rentThreeDay;
  @Supabase(name: 'rentOneWeek')
  int rentOneWeek;
  @Supabase(name: 'rentOneMonth')
  int rentOneMonth;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;
  String? user;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  RentItemModel({
    int? id,
    required this.name,
    required this.code,
    this.note,
    required this.jumlahBarang,
    required this.rentThreeDay,
    required this.rentOneWeek,
    required this.rentOneMonth,
    this.createdAt,
    this.user,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
