import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'presense'),
)
class PresenceModel extends OfflineFirstWithSupabaseModel {
  int user;
  String status;
  String? note;
  @Supabase(name: 'createdAt')
  DateTime createdAt;
  String? path;
  double? long;
  double? lat;
  String? belong;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  PresenceModel({
    int? id,
    required this.user,
    required this.status,
    this.note,
    required this.createdAt,
    this.path,
    this.long,
    this.lat,
    this.belong,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
