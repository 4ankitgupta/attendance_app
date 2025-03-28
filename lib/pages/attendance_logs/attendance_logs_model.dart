import '/backend/api_requests/api_calls.dart';
import '/components/drawer/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'attendance_logs_widget.dart' show AttendanceLogsWidget;
import 'package:flutter/material.dart';

class AttendanceLogsModel extends FlutterFlowModel<AttendanceLogsWidget> {
  ///  Local state fields for this page.

  dynamic record;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (attendanceRecord)] action in AttendanceLogs widget.
  ApiCallResponse? attendanceRecord;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for Drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();

    drawerModel.dispose();
  }
}
