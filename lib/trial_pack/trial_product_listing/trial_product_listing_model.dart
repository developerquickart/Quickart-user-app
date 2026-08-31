import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'trial_product_listing_widget.dart' show TrialProductListingWidget;
import 'package:flutter/material.dart';

class TrialProductListingModel
    extends FlutterFlowModel<TrialProductListingWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (trialPackDetails)] action in TrialProductListing widget.
  ApiCallResponse? apiResult80q;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (addtrailpack)] action in Button widget.
  ApiCallResponse? apiResultcAddCart31;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

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
