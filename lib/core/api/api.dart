class Api {
  /// Base url
  String baseRows = '4000'; // temporary
  String baseUrl = 'http://35.213.157.102:3030/api';
  String baseLocaleUrl = 'https://xulusystem.com/vip_base_locale';

  /// Master data
  String product = '/product';
  String users = '/users';
  String navigasi = '/navigasi';

  /// Transaction data
  // Get
  String closedPr = '/closed_pr';
  String tasks = '/tasks';
  String tasksAssignment = '/tasks_assignment';
  String assignmentCompleted = '/assignment_completed';
  String completedOpname = '/completed_opname';
  String reminders = '/reminders';
  String milestone = '/milestone';
  String reffNumOpname = '/reff_num_opname';
  String reffNumPb = '/reff_num_pb';
  String headerCompletedPb = '/header_completed_pb';
  String headerCompletedOp = '/header_completed_op';
  String getStatusFile = '/get_status_file';
  String penerimaanPo = '/penerimaan_po';
  String penerimaanWarehouseMkg = '/penerimaan_warehouse_mkg';
  String penerimaanPoCompleteHeader = '/penerimaan_po_complete_header';
  String getWarehouseOp = '/get_warehouse_op';
  String getCoordinates = '/get_coordinates';

  // Post
  String approval = '/approval';
  String penerimaanPoComplete = '/penerimaan_po_complete';
  String forgotPassword = '/forgot_password';
  String tasksCompleteHeader = '/tasks_complete_header';
  String tasksCompleteDetail = '/tasks_complete_detail';
  String prCompleteHeader = '/pr_complete_header';
  String tasksCompletedAssignment = '/tasks_completed_assignment';
  String opnameCompleted = '/opname_completed';
  String saveImages = '/save_images';
  String docRenew = '/doc_renew';
  String logCoordinate = '/log_coordinate';
  String signIn = '/sign_in';
}
