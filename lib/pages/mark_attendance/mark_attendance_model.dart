import '/backend/api_requests/api_calls.dart';
import '/components/drawer/drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'mark_attendance_widget.dart' show MarkAttendanceWidget;
import 'package:flutter/material.dart';

class MarkAttendanceModel extends FlutterFlowModel<MarkAttendanceWidget> {
  ///  Local state fields for this page.

  dynamic wardsJSON;

  bool searchIsActive = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (supervisorsWard)] action in MarkAttendance widget.
  ApiCallResponse? supervisorWardsResponse;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
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
