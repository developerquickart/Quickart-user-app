import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'trial_packcategories_widget.dart' show TrialPackcategoriesWidget;
import 'package:flutter/material.dart';

class TrialPackcategoriesModel
    extends FlutterFlowModel<TrialPackcategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (seosource)] action in TrialPackcategories widget.
  ApiCallResponse? apiResultSeoSource;
  Completer<ApiCallResponse>? apiRequestCompleter;

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
