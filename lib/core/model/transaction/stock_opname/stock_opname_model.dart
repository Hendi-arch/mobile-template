class StockOpnameModel {
  int? id;
  String? noOpname;
  String? tglOpname;
  String? description;
  String? noSyncOpname;
  String? tglSyncOpname;
  int? isSyncOpname;
  int? status1;
  String? createdAt;
  String? createdBy;
  String? updatedAt;
  String? updatedBy;
  String? userOpname;

  StockOpnameModel(
      {this.noOpname,
      this.tglOpname,
      this.description,
      this.noSyncOpname,
      this.tglSyncOpname,
      this.isSyncOpname,
      this.userOpname,
      this.status1,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['no_opname'] = noOpname;
    map['tgl_opname'] = tglOpname;
    map['keterangan'] = description;
    map['no_sync_opname'] = noSyncOpname;
    map['tgl_sync_opname'] = tglSyncOpname;
    map['id_purchase'] = userOpname;
    map['status1'] = status1;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['is_sync'] = isSyncOpname;

    return map;
  }

  StockOpnameModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.noOpname = map['no_opname'];
    this.tglOpname = map['tgl_opname'];
    this.description = map['keterangan'];
    this.noSyncOpname = map['no_sync_opname'];
    this.tglSyncOpname = map['tgl_sync_opname'];
    this.userOpname = map['id_purchase'];
    this.status1 = map['status1'];
    this.createdAt = map['created_at'];
    this.updatedAt = map['updated_at'];
    this.createdBy = map['created_by'];
    this.updatedBy = map['updated_by'];
    this.isSyncOpname = map['is_sync'];
  }
}
