import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'couponsand_offers_widget.dart' show CouponsandOffersWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CouponsandOffersModel extends FlutterFlowModel<CouponsandOffersWidget> {
  ///  Local state fields for this page.

  String discountType = 'percentage';

  String? couponImage;

  bool couponimgBool = false;

  int? status = 0;

  bool isLoadingIndicator = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (applyCoupon)] action in Text widget.
  ApiCallResponse? apiResultrm2;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (applyCoupon)] action in Text widget.
  ApiCallResponse? apiResulth77;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
