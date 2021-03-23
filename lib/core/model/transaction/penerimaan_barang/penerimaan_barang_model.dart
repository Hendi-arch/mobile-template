class PenerimaanBarangModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  int? id;
  String? kode_tmp;
  String? kode_disp;
  String? tanggal;
  String? keterangan;
  int? is_confirm;
  int? is_sync;
  int? is_mkg;
  int? is_po;
  String? id_purchase;
  String? id_supplier;
  String? no_penawaran;
  String? supplier;
  String? valuta;
  String? created_at;
  String? updated_at;
  String? file_path;
  String? no_surat_jalan;
  String? receipt_date;
  String? map_id_template;
  String? id_gudang_kirim;
  String? id_gudang;

  PenerimaanBarangModel(
      {this.kode_tmp,
      this.kode_disp,
      this.tanggal,
      this.keterangan,
      this.is_confirm,
      this.is_sync,
      this.file_path,
      this.id_purchase,
      this.id_supplier,
      this.no_penawaran,
      this.supplier,
      this.valuta,
      this.created_at,
      this.updated_at,
      this.no_surat_jalan,
      this.receipt_date,
      this.is_mkg,
      this.is_po,
      this.map_id_template,
      this.id_gudang_kirim,
      this.id_gudang});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['kode_tmp'] = kode_tmp;
    map['kode_disp'] = kode_disp;
    map['tanggal'] = tanggal;
    map['keterangan'] = keterangan;
    map['is_confirm'] = is_confirm;
    map['is_sync'] = is_sync;
    map['id_purchase'] = id_purchase;
    map['id_supplier'] = id_supplier;
    map['no_penawaran'] = no_penawaran;
    map['supplier'] = supplier;
    map['valuta'] = valuta;
    map['created_at'] = created_at;
    map['updated_at'] = updated_at;
    map['file_path'] = file_path;
    map['no_surat_jalan'] = no_surat_jalan;
    map['receipt_date'] = receipt_date;
    map['is_po'] = is_po;
    map['is_mkg'] = is_mkg;
    map['map_id_template'] = map_id_template;
    map['id_gudang_kirim'] = id_gudang_kirim;
    map['id_gudang'] = id_gudang;

    return map;
  }

  PenerimaanBarangModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.kode_tmp = map['kode_tmp'];
    this.kode_disp = map['kode_disp'];
    this.tanggal = map['tanggal'];
    this.keterangan = map['keterangan'];
    this.is_confirm = map['is_confirm'];
    this.is_sync = map['is_sync'];
    this.id_purchase = map['id_purchase'];
    this.id_supplier = map['id_supplier'];
    this.no_penawaran = map['no_penawaran'];
    this.supplier = map['supplier'];
    this.valuta = map['valuta'];
    this.created_at = map['created_at'];
    this.updated_at = map['updated_at'];
    this.file_path = map['file_path'];
    this.no_surat_jalan = map['no_surat_jalan'];
    this.receipt_date = map['receipt_date'];
    this.is_po = map['is_po'];
    this.is_mkg = map['is_mkg'];
    this.map_id_template = map['map_id_template'];
    this.id_gudang_kirim = map['id_gudang_kirim'];
    this.id_gudang = map['id_gudang'];
  }
}
