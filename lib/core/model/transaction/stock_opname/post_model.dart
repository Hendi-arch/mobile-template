class PostModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  final String? login_name;
  final String? no_opname;
  final String? tgl_opname;
  final String? keterangan;
  final String? kd_brg_ext;
  final String? qty;

  PostModel(
      {this.login_name,
      this.no_opname,
      this.tgl_opname,
      this.keterangan,
      this.kd_brg_ext,
      this.qty});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    map['login_name'] = this.login_name;
    map['no_opname'] = this.no_opname;
    map['tgl_opname'] = this.tgl_opname;
    map['keterangan'] = this.keterangan;
    map['kd_brg_ext'] = this.kd_brg_ext;
    map['qty'] = this.qty;

    return map;
  }
}
