class PostModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  final String? no_pr_sync;
  final String? tanggal_pr;
  final String? tgldibutuhkan;
  final String? keterangan;
  final String? is_sync;
  final String? login_name;
  final String? kd_brg_ext;
  final String? qty;
  final String? id_reff_d;
  final String? files;

  PostModel(
      {this.no_pr_sync,
      this.tanggal_pr,
      this.tgldibutuhkan,
      this.keterangan,
      this.is_sync,
      this.login_name,
      this.kd_brg_ext,
      this.qty,
      this.id_reff_d,
      this.files});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    map['no_pr_sync'] = this.no_pr_sync;
    map['tanggal_pr'] = this.tanggal_pr;
    map['tgldibutuhkan'] = this.tgldibutuhkan;
    map['keterangan'] = this.keterangan;
    map['is_sync'] = this.is_sync;
    map['login_name'] = this.login_name;
    map['kd_brg_ext'] = this.kd_brg_ext;
    map['qty'] = this.qty;
    map['id_reff_d'] = this.id_reff_d;
    map['files'] = this.files;

    return map;
  }
}
