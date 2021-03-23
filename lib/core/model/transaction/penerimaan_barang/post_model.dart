class PostModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  final String? paramsTrx;
  final String? kode_disp;
  final String? id_surat_jalan;
  final String? id_satuan_kemasan;
  final String? tanggal;
  final String? keterangan;
  final String? id_supplier;
  final String? supplier;
  final String? kode_brg_ext;
  final String? kode_brg;
  final String? qty_kemasan_unit;
  final String? qty_kemasan;
  final String? qty_actual;
  final String? id_gudang;
  final String? id_gudang_kirim;
  final String? map_id_template;
  final String? files;

  PostModel(
      {this.paramsTrx,
      this.kode_disp,
      this.id_surat_jalan,
      this.id_satuan_kemasan,
      this.tanggal,
      this.keterangan,
      this.id_supplier,
      this.supplier,
      this.kode_brg_ext,
      this.kode_brg,
      this.qty_kemasan_unit,
      this.qty_kemasan,
      this.qty_actual,
      this.id_gudang,
      this.id_gudang_kirim,
      this.map_id_template,
      this.files});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    map['paramsTrx'] = this.paramsTrx;
    map['kode_disp'] = this.kode_disp;
    map['id_surat_jalan'] = this.id_surat_jalan;
    map['id_satuan_kemasan'] = this.id_satuan_kemasan;
    map['tanggal'] = this.tanggal;
    map['keterangan'] = this.keterangan;
    map['id_supplier'] = this.id_supplier;
    map['supplier'] = this.supplier;
    map['kode_brg_ext'] = this.kode_brg_ext;
    map['kode_brg'] = this.kode_brg;
    map['qty_kemasan_unit'] = this.qty_kemasan_unit;
    map['qty_kemasan'] = this.qty_kemasan;
    map['qty_actual'] = this.qty_actual;
    map['id_gudang'] = this.id_gudang;
    map['id_gudang_kirim'] = this.id_gudang_kirim;
    map['map_id_template'] = this.map_id_template;
    map['files'] = this.files;

    return map;
  }
}
