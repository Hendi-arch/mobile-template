class PermintaanBarangDetailModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  int? id;
  int? qty;
  String? no_sync_mobile;
  String? no_sync;
  String? kd_brg_ext;
  String? nama_ext;
  String? id_satuan;
  String? nama_satuan;
  String? created_at;
  String? updated_at;
  String? keterangan;
  String? tglRequest;
  String? file_path;

  PermintaanBarangDetailModel(
      {this.no_sync_mobile,
      this.no_sync,
      this.kd_brg_ext,
      this.nama_ext,
      this.id_satuan,
      this.nama_satuan,
      this.created_at,
      this.updated_at,
      this.tglRequest,
      this.keterangan,
      this.qty,
      this.file_path});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['no_sync_mobile'] = no_sync_mobile;
    map['no_sync'] = no_sync;
    map['kd_brg_ext'] = kd_brg_ext;
    map['nama_ext'] = nama_ext;
    map['id_satuan'] = id_satuan;
    map['nama_satuan'] = nama_satuan;
    map['qty'] = qty;
    map['created_at'] = created_at;
    map['updated_at'] = updated_at;
    map['tgl_request'] = tglRequest;
    map['keterangan'] = keterangan;
    map['file_path'] = file_path;

    return map;
  }

  PermintaanBarangDetailModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.no_sync_mobile = map['no_sync_mobile'];
    this.no_sync = map['no_sync'];
    this.kd_brg_ext = map['kd_brg_ext'];
    this.nama_ext = map['nama_ext'];
    this.id_satuan = map['id_satuan'];
    this.nama_satuan = map['nama_satuan'];
    this.qty = map['qty'];
    this.created_at = map['created_at'];
    this.updated_at = map['updated_at'];
    this.tglRequest = map['tgl_request'];
    this.keterangan = map['keterangan'];
    this.file_path = map['file_path'];
  }
}
