class StockOpnameDetailModel {
  int? id;
  int? qtyOpname;
  String? noDetailOpname;
  String? noSyncDetailOpname;
  String? kdBrgOpname;
  String? namaExtOpname;
  String? idSatuanOpname;
  String? namaSatuanOpname;
  int? status1;
  String? createdAt;
  String? createdBy;
  String? updatedAt;
  String? updatedBy;
  String? keterangan;
  String? tglOpname;

  StockOpnameDetailModel(
      {this.noDetailOpname,
      this.noSyncDetailOpname,
      this.kdBrgOpname,
      this.namaExtOpname,
      this.idSatuanOpname,
      this.namaSatuanOpname,
      this.status1,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.tglOpname,
      this.keterangan,
      this.qtyOpname});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['no_detail_opname'] = noDetailOpname;
    map['no_sync_detail_opname'] = noSyncDetailOpname;
    map['kd_brg_ext'] = kdBrgOpname;
    map['nama_ext'] = namaExtOpname;
    map['id_satuan'] = idSatuanOpname;
    map['nama_satuan'] = namaSatuanOpname;
    map['qty'] = qtyOpname;
    map['tgl_opname'] = tglOpname;
    map['keterangan'] = keterangan;
    map['status1'] = status1;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;

    return map;
  }

  StockOpnameDetailModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.noDetailOpname = map['no_detail_opname'];
    this.noSyncDetailOpname = map['no_sync_detail_opname'];
    this.kdBrgOpname = map['kd_brg_ext'];
    this.namaExtOpname = map['nama_ext'];
    this.idSatuanOpname = map['id_satuan'];
    this.namaSatuanOpname = map['nama_satuan'];
    this.qtyOpname = map['qty'];
    this.tglOpname = map['tgl_opname'];
    this.keterangan = map['keterangan'];
    this.status1 = map['status1'];
    this.createdAt = map['created_at'];
    this.updatedAt = map['updated_at'];
    this.createdBy = map['created_by'];
    this.updatedBy = map['updated_by'];
  }
}
