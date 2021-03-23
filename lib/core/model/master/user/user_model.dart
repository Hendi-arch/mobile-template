class UserModel {
  int? id;
  String? loginName;
  String? encryptedPassword;
  int? status;
  int? lastNoPr;
  int? lastNoOpname;
  int? lastNoTasks;
  String? email;
  int? isNewPassword;
  String? userName;
  String? namaKapal;
  int? biometricStatus;

  UserModel(
      {this.loginName,
      this.encryptedPassword,
      this.status,
      this.lastNoPr,
      this.lastNoOpname,
      this.lastNoTasks,
      this.email,
      this.isNewPassword,
      this.userName,
      this.namaKapal,
      this.biometricStatus});

  UserModel.fromJson(Map<String, dynamic> map) {
    this.loginName = map['login_name'];
    this.encryptedPassword = map['encrypted_password'];
    this.status = map['status'];
    this.lastNoPr = map['last_no_pr'];
    this.lastNoOpname = map['last_no_opname'];
    this.lastNoTasks = map['last_no_tasks'];
    this.email = map['email'];
    this.isNewPassword = map['is_new_password'];
    this.userName = map['user_name'];
    this.namaKapal = map['nama_kapal'];
    this.biometricStatus = map['biometric_status'];
  }

  Map<String, dynamic> toMap() {
    final _result = Map<String, dynamic>();

    if (id != null) _result['id'] = id;
    _result['login_name'] = loginName;
    _result['encrypted_password'] = encryptedPassword;
    _result['status'] = status;
    _result['last_no_pr'] = lastNoPr;
    _result['last_no_opname'] = lastNoOpname;
    _result['last_no_tasks'] = lastNoTasks;
    _result['email'] = email;
    _result['is_new_password'] = isNewPassword;
    _result['user_name'] = userName;
    _result['nama_kapal'] = namaKapal;
    _result['biometric_status'] = biometricStatus;

    return _result;
  }
}
