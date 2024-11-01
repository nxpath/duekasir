import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'expenses'),
)
class ExpensesModel extends OfflineFirstWithSupabaseModel {
  String title;
  String? note;
  int amount;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;
  // Be sure to specify an index that **is not** auto incremented in your table.
  // An offline-first strategy requires distributed clients to create
  // indexes without fear of collision.
  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  ExpensesModel({
    int? id,
    required this.title,
    this.note,
    required this.amount,
    this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
