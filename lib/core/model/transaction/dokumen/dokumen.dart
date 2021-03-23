class DokumenModel {
  String? loginName;
  String? tglBerlakuAwal;
  String? tglBerlakuAkhir;
  String? idDocNumber;
  String? keterangan;

  DokumenModel(
      {this.idDocNumber,
      this.keterangan,
      this.loginName,
      this.tglBerlakuAkhir,
      this.tglBerlakuAwal});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['id_doc_reminders'] = idDocNumber;
    map['login_name'] = loginName;
    map['tgl_berlaku_awal'] = tglBerlakuAwal;
    map['tgl_berlaku_akhir'] = tglBerlakuAkhir;
    map['notes'] = keterangan;

    return map;
  }
}
