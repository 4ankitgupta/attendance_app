import '/backend/api_requests/api_calls.dart';
import '/components/drawer/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mark_attendance_widget.dart' show MarkAttendanceWidget;
import 'package:flutter/material.dart';

class MarkAttendanceModel extends FlutterFlowModel<MarkAttendanceWidget> {
  ///  Local state fields for this page.

  String address = 'Address';

  dynamic empJson;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GeoLocation)] action in MarkAttendance widget.
  ApiCallResponse? geoLocationFeatched;
  // Stores action output result for [Backend Call - API (employeeAttendance)] action in MarkAttendance widget.
  ApiCallResponse? employeeFetch;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (punchInOut)] action in Button widget.
  ApiCallResponse? punchIN;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (punchInOut)] action in Button widget.
  ApiCallResponse? punchOut;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    drawerModel.dispose();
  }
}
