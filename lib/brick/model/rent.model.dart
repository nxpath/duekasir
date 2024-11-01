import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'rent'),
)
class RentModel extends OfflineFirstWithSupabaseModel {
  String name;
  int item;
  String? note;
  int amount;
  int? pinalty;
  bool identity;
  bool picture;
  bool paid;
  @Supabase(name: 'howManyDay')
  int howManyDay;
  @Supabase(name: 'rentDate')
  DateTime rentDate;
  @Supabase(name: 'updatedAt')
  DateTime? updatedAt;
  @Supabase(name: 'createdAt')
  DateTime? createdAt;

  @Supabase(unique: true)
  @Sqlite(index: true, unique: true)
  final int id;

  RentModel({
    int? id,
    required this.name,
    required this.item,
    this.note,
    required this.amount,
    this.pinalty,
    required this.identity,
    required this.picture,
    required this.paid,
    required this.howManyDay,
    required this.rentDate,
    this.updatedAt,
    this.createdAt,
  }) : id = id ?? DateTime.now().microsecondsSinceEpoch;
}
