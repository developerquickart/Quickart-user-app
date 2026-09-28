import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rating_order_screen_copy1_widget.dart'
    show RatingOrderScreenCopy1Widget;
import 'package:flutter/material.dart';

class RatingOrderScreenCopy1Model
    extends FlutterFlowModel<RatingOrderScreenCopy1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBarOrder widget.
  double? ratingBarOrderValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? connectivityResult;
  // Stores action output result for [Backend Call - API (reviewondelivery)] action in Button widget.
  ApiCallResponse? apiResultupw;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
