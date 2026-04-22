import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'products_list_view_widget.dart' show ProductsListViewWidget;
import 'package:flutter/material.dart';

class ProductsListViewModel extends FlutterFlowModel<ProductsListViewWidget> {
  ///  Local state fields for this component.

  dynamic productListC;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - VarientBotttomSheet] action in Button widget.
  dynamic returnJson1;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? networkCheck;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? addtoCart;
  // Stores action output result for [Bottom Sheet - VarientBotttomSheet] action in Button widget.
  dynamic returnJson2;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? internet;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? addtocart;
  // Stores action output result for [Bottom Sheet - VarientBotttomSheet] action in Button widget.
  dynamic returnJson3;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? network;
  // Stores action output result for [Backend Call - API (Add to Cart)] action in Button widget.
  ApiCallResponse? cartadd;
  // Stores action output result for [Bottom Sheet - VarientBotttomSheet] action in Row widget.
  dynamic returnJson10;
  // Stores action output result for [Custom Action - checkInternetConnection] action in IconButton widget.
  bool? connnectivtyC;
  // Stores action output result for [Backend Call - API (addnotifyme)] action in IconButton widget.
  ApiCallResponse? apiResultb11;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Icon1 widget.
  bool? connectivityResult;
  // Stores action output result for [Backend Call - API (addremwishlist)] action in Icon1 widget.
  ApiCallResponse? addRemoveAPIResponse;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Icon2 widget.
  bool? connectivityResult1;
  // Stores action output result for [Backend Call - API (addremwishlist)] action in Icon2 widget.
  ApiCallResponse? addRemoveAPIResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
