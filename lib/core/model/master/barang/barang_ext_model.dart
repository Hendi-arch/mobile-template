class BarangExtModel {
  int? id;
  String? kodeExt;
  String? namaExt;
  String? idSatuan;
  String? namaSatuan;
  String? createdAt;
  String? updatedAt;
  int? isNonStock;
  String? idDepartment;
  String? department;
  int? status1;

  BarangExtModel(
      {this.kodeExt,
      this.namaExt,
      this.idSatuan,
      this.namaSatuan,
      this.createdAt,
      this.updatedAt,
      this.isNonStock,
      this.idDepartment,
      this.department,
      this.status1});

  Map<String, dynamic> toMap() {
    final _result = Map<String, dynamic>();

    if (id != null) _result['id'] = id;
    _result['kode_ext'] = kodeExt;
    _result['nama_ext'] = namaExt;
    _result['id_satuan'] = idSatuan;
    _result['nama_satuan'] = namaSatuan;
    _result['created_at'] = createdAt;
    _result['updated_at'] = updatedAt;
    _result['is_non_stock'] = isNonStock;
    _result['id_department'] = idDepartment;
    _result['department'] = department;
    _result['status1'] = status1;

    return _result;
  }

  BarangExtModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.kodeExt = map['kode_ext'];
    this.namaExt = map['nama_ext'];
    this.idSatuan = map['id_satuan'];
    this.namaSatuan = map['nama_satuan'];
    this.createdAt = map['created_at'];
    this.updatedAt = map['updated_at'];
    this.isNonStock = map['is_non_stock'];
    this.idDepartment = map['id_department'];
    this.department = map['department'];
    this.status1 = map['status1'];
  }
}
