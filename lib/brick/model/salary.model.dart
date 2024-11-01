import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:due_kasir/brick/model/item_salary.model.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'salary'),
)
class SalaryModel extends OfflineFirstWithSupabaseModel {
  int userId;
  String status;
  String periode;
  List<ItemSalary> items;
  List<ItemSalary>? deductions;
  int? total;
  String? note;
  String? management;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;
  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  SalaryModel({
    int? id,
    required this.userId,
    required this.status,
    required this.periode,
    required this.items,
    this.deductions,
    this.total,
    this.note,
    this.management,
    this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
