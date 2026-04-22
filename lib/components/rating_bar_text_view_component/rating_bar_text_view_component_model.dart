import '/flutter_flow/flutter_flow_util.dart';
import 'rating_bar_text_view_component_widget.dart'
    show RatingBarTextViewComponentWidget;
import 'package:flutter/material.dart';

class RatingBarTextViewComponentModel
    extends FlutterFlowModel<RatingBarTextViewComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
