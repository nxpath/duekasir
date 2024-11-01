import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'request'),
)
class RequestModel extends OfflineFirstWithSupabaseModel {
  String? title;
  String? note;
  String? status;
  @Supabase(name: 'created_at')
  DateTime? createdAt;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  RequestModel({
    int? id,
    this.title,
    this.note,
    this.status,
    this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
