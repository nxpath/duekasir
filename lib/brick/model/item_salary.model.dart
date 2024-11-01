import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'salary'),
  sqliteConfig: SqliteSerializable(),
)
class ItemSalary extends OfflineFirstWithSupabaseModel {
  @Sqlite(unique: true)
  int id;
  String? description;
  String? amount;

  ItemSalary({
    required this.id,
    this.description,
    this.amount,
  });
}
