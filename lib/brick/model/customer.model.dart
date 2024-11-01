import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'customer'),
)
class CustomerModel extends OfflineFirstWithSupabaseModel {
  String nama;
  String? phone;
  String? ktp;
  DateTime? dob;
  String? keterangan;
  bool status;
  DateTime? masuk;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  CustomerModel({
    int? id,
    required this.nama,
    this.phone,
    this.ktp,
    this.dob,
    this.keterangan,
    required this.status,
    this.masuk,
    this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
