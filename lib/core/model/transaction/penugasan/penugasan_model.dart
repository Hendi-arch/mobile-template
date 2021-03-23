import 'dart:io' show File;

class PenugasanModel {
  int? id;
  String? taskId;
  String? assignmentDate;
  String? dueDate;
  String? activityId;
  String? activityName;
  String? startDate;
  num? startLatitude;
  num? startLongitude;
  String? finishDate;
  num? finishLatitude;
  num? finishLongitude;
  String? finishNote;
  int? isStartFinish;
  String? loginName;
  int? status1;
  String? createdAt;
  String? createdBy;
  String? updatedAt;
  String? updatedBy;
  String? noReferensi;
  String? idMenu;
  int? isRenew;
  File? files;

  PenugasanModel(
      {this.taskId,
      this.assignmentDate,
      this.dueDate,
      this.activityName,
      this.activityId,
      this.startDate,
      this.startLatitude,
      this.startLongitude,
      this.finishDate,
      this.finishLatitude,
      this.finishLongitude,
      this.finishNote,
      this.isStartFinish,
      this.loginName,
      this.status1,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.noReferensi,
      this.idMenu,
      this.isRenew,
      this.files});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['task_id'] = taskId;
    map['activity_id'] = activityId;
    map['login_name'] = loginName;
    map['updated_at'] = updatedAt;
    map['updated_by'] = updatedBy;
    map['start_date'] = startDate;
    map['finish_date'] = finishDate;
    map['start_latitude'] = startLatitude;
    map['start_longitude'] = startLongitude;
    map['finish_latitude'] = finishLatitude;
    map['finish_longitude'] = finishLongitude;
    map['assignment_date'] = assignmentDate;
    map['due_date'] = dueDate;
    map['finish_note'] = finishNote;
    map['created_at'] = createdAt;
    map['no_referensi'] = noReferensi;
    map['files'] = files;
    map['activity_name'] = activityName;
    map['is_start_finish'] = isStartFinish;
    map['status1'] = status1;
    map['id_menu'] = idMenu;
    map['is_renew'] = isRenew;

    return map;
  }

  PenugasanModel.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.taskId = map['task_id'];
    this.assignmentDate = map['assignment_date'];
    this.dueDate = map['due_date'];
    this.activityId = map['activity_id'];
    this.activityName = map['activity_name'];
    this.startDate = map['start_date'];
    this.startLatitude = map['start_latitude'];
    this.startLongitude = map['start_longitude'];
    this.finishDate = map['finish_date'];
    this.finishLatitude = map['finish_latitude'];
    this.finishLongitude = map['finish_longitude'];
    this.finishNote = map['finish_note'];
    this.isStartFinish = map['is_start_finish'];
    this.loginName = map['user'];
    this.status1 = map['status1'];
    this.createdAt = map['created_at'];
    this.createdBy = map['created_by'];
    this.updatedAt = map['updated_at'];
    this.updatedBy = map['updated_by'];
    this.noReferensi = map['no_referensi'];
    this.idMenu = map['id_menu'];
    this.isRenew = map['is_renew'];
  }
}
