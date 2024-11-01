import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'users'),
  sqliteConfig: SqliteSerializable(),
)
class UserModel extends OfflineFirstWithSupabaseModel {
  late String nama;
  DateTime? dob;
  String? keterangan;
  late bool status;
  DateTime? masuk;
  @Supabase(name: 'createdAt')
  DateTime createdAt;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  UserModel({
    int? id,
    required this.nama,
    this.dob,
    this.keterangan,
    required this.status,
    this.masuk,
    required this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
