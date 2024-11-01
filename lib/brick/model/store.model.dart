import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'store'),
)
class StoreModel extends OfflineFirstWithSupabaseModel {
  late String title;
  late String description;
  late String phone;
  String? footer;
  @Supabase(name: 'subFooter')
  String? subFooter;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  StoreModel({
    int? id,
    required this.title,
    required this.description,
    required this.phone,
    this.footer,
    this.subFooter,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
