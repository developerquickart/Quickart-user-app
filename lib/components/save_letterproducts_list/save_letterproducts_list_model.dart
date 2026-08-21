import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'save_letterproducts_list_widget.dart' show SaveLetterproductsListWidget;
import 'package:flutter/material.dart';

class SaveLetterproductsListModel
    extends FlutterFlowModel<SaveLetterproductsListWidget> {
  ///  Local state fields for this component.

  dynamic productListC;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? networkCheck11;
  // Stores action output result for [Backend Call - API (removesavecart)] action in Button widget.
  ApiCallResponse? removeSaveCart;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? networkCheck1;
  // Stores action output result for [Backend Call - API (addtosavecart)] action in Button widget.
  ApiCallResponse? addtoCart;
  // Stores action output result for [Backend Call - API (addtosavesubcart)] action in Button widget.
  ApiCallResponse? addtosubCart;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
