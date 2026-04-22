import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'subscription_order_products_info_widget.dart'
    show SubscriptionOrderProductsInfoWidget;
import 'package:flutter/material.dart';

class SubscriptionOrderProductsInfoModel
    extends FlutterFlowModel<SubscriptionOrderProductsInfoWidget> {
  ///  Local state fields for this page.

  bool pauseResume = false;

  String? selectedResumeDate;

  String? orderTimeSlot;

  String? subscriptionId;

  String? subscriptionCartId;

  bool isLoadingIndiocator = false;

  bool isUpdatedJson = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (subscriptionOrderPause)] action in Container widget.
  ApiCallResponse? apiResultOrderPause1;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - API (subscriptionOrderResume)] action in Button widget.
  ApiCallResponse? subscriptionOrderResumeAPI1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
