class PenerimaanBarangDetailModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  int? id;
  String? kode_tmp_detail;
  String? no_sync;
  String? kode_brg;
  String? kode_brg_ext;
  String? id_satuan_kemasan;
  int? qty_kemasan_unit;
  int? qty_kemasan;
  String? nama_ext;
  int? qty;
  int? qty_actual;
  String? nama_satuan;
  String? created_at;
  String? updated_at;

  PenerimaanBarangDetailModel(
      {this.kode_tmp_detail,
      this.no_sync,
      this.kode_brg,
      this.kode_brg_ext,
      this.nama_ext,
      this.nama_satuan,
      this.created_at,
      this.updated_at,
      this.id_satuan_kemasan,
      this.qty_kemasan_unit,
      this.qty_kemasan,
      this.qty,
      this.qty_actual});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['kode_tmp_detail'] = kode_tmp_detail;
    map['no_sync'] = no_sync;
    map['kode_brg'] = kode_brg;
    map['kode_brg_ext'] = kode_brg_ext;
    map['id_satuan_kemasan'] = id_satuan_kemasan;
    map['nama_ext'] = nama_ext;
    map['nama_satuan'] = nama_satuan;
    map['qty'] = qty;
    map['qty_kemasan_unit'] = qty_kemasan_unit;
    map['qty_kemasan'] = qty_kemasan;
    map['qty_actual'] = qty_actual;
    map['created_at'] = created_at;
    map['updated_at'] = updated_at;

    return map;
  }

  PenerimaanBarangDetailModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.kode_tmp_detail = map['kode_tmp_detail'];
    this.no_sync = map['no_sync'];
    this.kode_brg = map['kode_brg'];
    this.kode_brg_ext = map['kode_brg_ext'];
    this.id_satuan_kemasan = map['id_satuan_kemasan'];
    this.nama_ext = map['nama_ext'];
    this.nama_satuan = map['nama_satuan'];
    this.qty = map['qty'];
    this.qty_kemasan = map['qty_kemasan'];
    this.qty_kemasan_unit = map['qty_kemasan_unit'];
    this.qty_actual = map['qty_actual'];
    this.created_at = map['created_at'];
    this.updated_at = map['updated_at'];
  }
}
