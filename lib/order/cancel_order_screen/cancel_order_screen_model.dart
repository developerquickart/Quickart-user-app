import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cancel_order_screen_widget.dart' show CancelOrderScreenWidget;
import 'package:flutter/material.dart';

class CancelOrderScreenModel extends FlutterFlowModel<CancelOrderScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' Please Enter Reason';
    }

    return null;
  }

  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivityResult;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validation;
  // Stores action output result for [Backend Call - API (cancelledproductorder)] action in Button widget.
  ApiCallResponse? apiResultln5;
  // Stores action output result for [Backend Call - API (cancelledproductorder)] action in Button widget.
  ApiCallResponse? apiResult210;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivityResult2;
  // Stores action output result for [Backend Call - API (cancelledquickorderprod)] action in Button widget.
  ApiCallResponse? apiResultlg0;
  // Stores action output result for [Backend Call - API (cancelledquickorderprod)] action in Button widget.
  ApiCallResponse? apiResults5h;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivityResult22;
  // Stores action output result for [Backend Call - API (cancelledquickorder)] action in Button widget.
  ApiCallResponse? apiResultlg02;
  // Stores action output result for [Backend Call - API (cancelledquickorder)] action in Button widget.
  ApiCallResponse? apiResults5h2;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
