class ExpensesModel {
  int? id;
  String title;
  String? note;
  int amount;
  DateTime? createdAt;
  bool isSynced;

  ExpensesModel({
    this.id,
    required this.title,
    this.note,
    required this.amount,
    this.createdAt,
    this.isSynced = true,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'note': note,
      'amount': amount,
      'createdAt': createdAt?.toIso8601String()
    };
  }

  factory ExpensesModel.fromJson(json) {
    return ExpensesModel(
      id: json['id'],
      title: json['title'],
      note: json['note'] != null ? json['note'] as String : null,
      amount: json['amount'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
    );
  }
}
