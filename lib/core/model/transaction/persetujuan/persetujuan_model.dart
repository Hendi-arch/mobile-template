import 'dart:io' show File;

class PersetujuanModel {
  // ignore_for_file: non_constant_identifier_names
  // ignore_for_file: camel_case_types
  // ignore_for_file: prefer_single_quotes

  int? id;
  String? reff_num;
  String? reff_num_header;
  String? id_docflow;
  String? id_approve;
  String? id_menu;
  String? id_user;
  int? is_approve;
  int? is_closed;
  String? milestone_date;
  String? note_approval;
  int? status1;
  String? created_at;
  String? created_by;
  String? updated_at;
  String? updated_by;
  String? trx_desc;
  String? requested_by;
  String? trx_notes;
  double? qty_approved;
  String? trx_date;
  File? files;

  PersetujuanModel(
      {this.reff_num,
      this.reff_num_header,
      this.id_docflow,
      this.id_approve,
      this.id_menu,
      this.id_user,
      this.is_approve,
      this.is_closed,
      this.milestone_date,
      this.note_approval,
      this.status1,
      this.trx_desc,
      this.requested_by,
      this.trx_notes,
      this.qty_approved,
      this.trx_date,
      this.created_at,
      this.created_by,
      this.updated_at,
      this.updated_by,
      this.files});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['reff_num'] = reff_num;
    map['reff_num_header'] = reff_num_header;
    map['id_docflow'] = id_docflow;
    map['id_approve'] = id_approve;
    map['id_menu'] = id_menu;
    map['id_user'] = id_user;
    map['is_approve'] = is_approve;
    map['is_closed'] = is_closed;
    map['milestone_date'] = milestone_date;
    map['note_approval'] = note_approval;
    map['status1'] = status1;
    map['created_at'] = created_at;
    map['created_by'] = created_by;
    map['updated_at'] = updated_at;
    map['updated_by'] = updated_by;
    map['trx_desc'] = trx_desc;
    map['requested_by'] = requested_by;
    map['trx_notes'] = trx_notes;
    map['qty_approved'] = qty_approved;
    map['trx_date'] = trx_date;
    map['files'] = files;

    return map;
  }

  PersetujuanModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.reff_num = map['reff_num'];
    this.reff_num_header = map['reff_num_header'];
    this.id_docflow = map['id_docflow'];
    this.id_approve = map['id_approve'];
    this.id_menu = map['id_menu'];
    this.id_user = map['id_user'];
    this.is_approve = map['is_approve'];
    this.is_closed = map['is_closed'];
    this.milestone_date = map['milestone_date'];
    this.note_approval = map['note_approval'];
    this.status1 = map['status1'];
    this.created_at = map['created_at'];
    this.created_by = map['created_by'];
    this.updated_at = map['updated_at'];
    this.updated_by = map['updated_by'];
    this.trx_desc = map['trx_desc'];
    this.requested_by = map['requested_by'];
    this.trx_notes = map['trx_notes'];
    this.qty_approved = map['qty_approved'];
    this.trx_date = map['trx_date'];
  }
}
