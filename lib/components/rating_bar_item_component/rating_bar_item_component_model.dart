import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rating_bar_item_component_widget.dart'
    show RatingBarItemComponentWidget;
import 'package:flutter/material.dart';

class RatingBarItemComponentModel
    extends FlutterFlowModel<RatingBarItemComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBarProduct widget.
  double? ratingBarProductValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - checkInternetConnection] action in submitBtn widget.
  bool? connectivityResult1;
  // Stores action output result for [Backend Call - API (addproductrating)] action in submitBtn widget.
  ApiCallResponse? apiResultmul1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
