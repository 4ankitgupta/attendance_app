import '/backend/api_requests/api_calls.dart';
import '/components/drawer/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  dynamic record;

  LatLng? loc;

  String? address;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (attendanceRecord)] action in HomePage widget.
  ApiCallResponse? bla;
  // Stores action output result for [Backend Call - API (GeoLocation)] action in HomePage widget.
  ApiCallResponse? geoLocationFeatched;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (faceAttendance)] action in Button widget.
  ApiCallResponse? faceAttenResponse;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (faceAttendance)] action in Button widget.
  ApiCallResponse? faceAttenResponseOut;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
  }
}
