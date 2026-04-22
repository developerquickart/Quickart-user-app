import '/backend/api_requests/api_calls.dart';
import '/components/bottomnav_bar/bottomnav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'categories_screen_widget.dart' show CategoriesScreenWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CategoriesScreenModel extends FlutterFlowModel<CategoriesScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (seosource)] action in categoriesScreen widget.
  ApiCallResponse? apiResultSeoSource;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for bottomnavBar component.
  late BottomnavBarModel bottomnavBarModel;

  @override
  void initState(BuildContext context) {
    bottomnavBarModel = createModel(context, () => BottomnavBarModel());
  }

  @override
  void dispose() {
    bottomnavBarModel.dispose();
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
