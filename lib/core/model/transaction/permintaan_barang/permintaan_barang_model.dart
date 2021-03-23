class PermintaanBarangModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  int? id;
  String? description;
  String? date;
  int? priority;
  String? tgldibutuhkan;
  String? no_pr_sync;
  String? nomor_sync;
  String? created_at;
  String? updated_at;
  String? tgl_sync;
  int? is_confirm;
  int? is_sync;
  String? id_purchase;

  PermintaanBarangModel(
      {this.date,
      this.tgldibutuhkan,
      this.no_pr_sync,
      this.nomor_sync,
      this.tgl_sync,
      this.created_at,
      this.updated_at,
      this.is_confirm,
      this.priority,
      this.is_sync,
      this.id_purchase,
      this.description});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['description'] = description;
    map['priority'] = priority;
    map['date'] = date;
    map['tgldibutuhkan'] = tgldibutuhkan;
    map['no_pr_sync'] = no_pr_sync;
    map['nomor_sync'] = nomor_sync;
    map['created_at'] = created_at;
    map['updated_at'] = updated_at;
    map['tgl_sync'] = tgl_sync;
    map['is_confirm'] = is_confirm;
    map['is_sync'] = is_sync;
    map['id_purchase'] = id_purchase;

    return map;
  }

  PermintaanBarangModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.description = map['description'];
    this.priority = map['priority'];
    this.date = map['date'];
    this.tgldibutuhkan = map['tgldibutuhkan'];
    this.no_pr_sync = map['no_pr_sync'];
    this.nomor_sync = map['nomor_sync'];
    this.created_at = map['created_at'];
    this.updated_at = map['updated_at'];
    this.tgl_sync = map['tgl_sync'];
    this.is_confirm = map['is_confirm'];
    this.is_sync = map['is_sync'];
    this.id_purchase = map['id_purchase'];
  }
}
