import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'due_payment'),
)
class DuePaymentModel extends OfflineFirstWithSupabaseModel {
  String name;
  String? invoice;
  @Supabase(name: 'itemName')
  String? itemName;
  @Supabase(name: 'itemAmount')
  int itemAmount;
  int amount;
  String status;
  String? note;
  @Supabase(name: 'dateIn')
  DateTime dateIn;
  @Supabase(name: 'dueDate')
  DateTime dueDate;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;

  // Be sure to specify an index that **is not** auto incremented in your table.
  // An offline-first strategy requires distributed clients to create
  // indexes without fear of collision.
  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  DuePaymentModel({
    int? id,
    required this.name,
    this.invoice,
    this.itemName,
    required this.itemAmount,
    required this.amount,
    required this.status,
    this.note,
    required this.dateIn,
    required this.dueDate,
    this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
