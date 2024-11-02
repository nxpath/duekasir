class CustomerModel {
  int? id;
  late String nama;
  String? phone;
  String? ktp;
  late DateTime? dob;
  String? keterangan;
  late bool status;
  DateTime? masuk;
  DateTime? createdAt;
  bool isSynced;

  CustomerModel({
    this.id,
    required this.nama,
    this.phone,
    this.ktp,
    this.dob,
    this.keterangan,
    required this.status,
    this.masuk,
    this.createdAt,
    this.isSynced = true,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'phone': phone,
      'ktp': ktp,
      'dob': dob?.toIso8601String(),
      'keterangan': keterangan,
      'status': status,
      'masuk': masuk?.toIso8601String(),
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  factory CustomerModel.fromJson(json) {
    return CustomerModel(
      id: json['id'],
      nama: json['nama'],
      phone: json['phone'] != null ? json['phone'] as String : null,
      ktp: json['ktp'] != null ? json['ktp'] as String : null,
      dob: json['dob'] != null ? DateTime.parse(json['dob']) : null,
      keterangan:
          json['keterangan'] != null ? json['keterangan'] as String : null,
      status: json['status'],
      masuk: json['masuk'] != null ? DateTime.parse(json['masuk']) : null,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
    );
  }
}
