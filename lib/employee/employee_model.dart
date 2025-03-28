import '/backend/api_requests/api_calls.dart';
import '/components/drawer/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'employee_widget.dart' show EmployeeWidget;
import 'package:flutter/material.dart';

class EmployeeModel extends FlutterFlowModel<EmployeeWidget> {
  ///  Local state fields for this page.

  dynamic currEmp;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (employeeDetail)] action in Employee widget.
  ApiCallResponse? employeeDetail;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (storeFace)] action in Button widget.
  ApiCallResponse? storeImageResponse;
  // Stores action output result for [Custom Action - monthPicker] action in Button widget.
  DateTime? outMonth;
  // Stores action output result for [Backend Call - API (employeeDetail)] action in Button widget.
  ApiCallResponse? empDetails;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    drawerModel.dispose();
  }
}
