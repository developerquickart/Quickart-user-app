import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'card_screen_widget.dart' show CardScreenWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CardScreenModel extends FlutterFlowModel<CardScreenWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Button widget.
  bool? checkInternet;
  // Stores action output result for [Backend Call - API (savecard)] action in Button widget.
  ApiCallResponse? apiResultb7b;
  // Stores action output result for [Backend Call - API (ordercardchanges)] action in Container widget.
  ApiCallResponse? apiResultnc8;
  // Stores action output result for [Custom Action - checkInternetConnection] action in Text widget.
  bool? connectivityResultCopy1;
  // Stores action output result for [Backend Call - API (DeleteCard)] action in Text widget.
  ApiCallResponse? apiResulttj7;

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
