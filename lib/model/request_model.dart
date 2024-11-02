class RequestModel {
  int? id;
  String? title;
  String? note;
  String? status;
  DateTime? createdAt;

  RequestModel({
    this.id,
    this.title,
    this.note,
    this.status,
    this.createdAt,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'note': note,
      'status': status,
      'created_at': createdAt?.toIso8601String()
    };
  }

  factory RequestModel.fromJson(json) {
    return RequestModel(
      id: json['id'],
      title: json['title'],
      note: json['note'],
      status: json['status'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
    );
  }
}