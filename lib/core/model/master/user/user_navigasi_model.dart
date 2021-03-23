class UserNavigasiModel {
  int? id;
  int? noUrut;
  String? loginName;
  String? moduleName;
  String? nav;
  String? namaMenu;

  UserNavigasiModel(
      {this.noUrut, this.loginName, this.moduleName, this.nav, this.namaMenu});

  UserNavigasiModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.loginName = map['login_name'];
    this.moduleName = map['module_name'];
    this.nav = map['nav'];
    this.namaMenu = map['nama_menu'];
    this.noUrut = map['no_urut'];
  }
}
